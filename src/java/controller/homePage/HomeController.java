/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.homePage;

import constant.CommonConst;
import dal.implement.CategoryDAO;
import dal.implement.ProductDAO;
import entity.Category;
import entity.PageControl;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 *
 * @author chucken
 */
public class HomeController extends HttpServlet {

    ProductDAO productDao = new ProductDAO();
    CategoryDAO categoryDAO = new CategoryDAO();
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PageControl pageControl = new PageControl();
        
        List<Product> listProduct = findProductDoGet(request, pageControl);
        
        // get ve list category dao
        List<Category> listCategory = categoryDAO.findAll();
        
        // get listProduct, listCategory vao trong session
        HttpSession session = request.getSession();
        session.setAttribute("listProduct", listProduct);
        session.setAttribute("listCategory", listCategory);
        
        //set pageControl de chia trang
        request.setAttribute("pageControl", pageControl);
        
        // chuyen sang trang home.jsp
        request.getRequestDispatcher("views/homePage/home.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("home");
    }

    private List<Product> findProductDoGet(HttpServletRequest request, PageControl pageControl) {
        //get ve page hien tai
        String pageRaw = request.getParameter("page");
        
        
        // total record
        int totalRecord = 0;
        
        //valid page
        int page;
        try {
            page = Integer.parseInt(pageRaw);
            
            if(page <= 0) {
                page = 1;
            }
        } catch (NumberFormatException e) {
            page = 1;
        }
        
        // get ve thang search ben home.jsp
        String actionSearch = request.getParameter("search") == null
                            ? ""
                            : request.getParameter("search");
        
        //  get ve request url
        String requestURL = request.getRequestURL().toString();
        
        // get ve list product DAO
        List<Product> listProduct;
        switch (actionSearch) {
            case "category":
                String categoryId = request.getParameter("categoryId");
                // get ra total record
                totalRecord = productDao.findTotalRecordByCategory(categoryId);
                listProduct = productDao.findByCategory(categoryId, page);
                pageControl.setUrlPattern(requestURL + "?search=category&categoryId=" + categoryId + "&");
                break;
                
            case "searchByName":
//                String keyword = request.getParameter("keyword");
//                // find by name
//                listProduct = productDao.findByKeyWord(keyword);
//                //searchByname (phan trang)
//                totalRecord = productDao.searchByName(keyword, page);
//                pageControl.setUrlPattern(requestURL + "?search=searchByName&keyword=" + keyword + "&");
                
                  String keyword = request.getParameter("keyword");
                listProduct = productDao.findByKeyWord(keyword);
                totalRecord = productDao.findTotalRecordByName(keyword);
                listProduct = productDao.searchByName(keyword, page);
                pageControl.setUrlPattern(requestURL + "?search=searchByName&keyword=" + keyword + "&");
                break;
                
            default:
                listProduct = productDao.findAll();
                pageControl.setUrlPattern(requestURL + "?");
        }
        
        // pagination : chia trang theo BE
        
        
        //total Page
        int totalPage = (totalRecord % CommonConst.RECORD_PER_PAGE) == 0
                        ? (totalRecord / CommonConst.RECORD_PER_PAGE) 
                        : (totalRecord / CommonConst.RECORD_PER_PAGE) + 1;
        
        //set total record, total page, page ( hien tai ) vao pageControl
        pageControl.setPage(page);
        pageControl.setTotalRecord(totalRecord);
        pageControl.setTotalPage(totalPage);
        
        return listProduct;
        
    }

}
