/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.implement.CategoryDAO;
import dal.implement.ProductDAO;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;


// add ảnh
@MultipartConfig
public class productAdminServlet extends HttpServlet {

    ProductDAO proDao = new ProductDAO();
    CategoryDAO cateDao = new CategoryDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //set enconding UTF-8 (vi co the nhap vao tieng viet)
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // get session
        HttpSession session = request.getSession();

        // get ra action cua nguoi dung (add, edit or delete ...)
        String action = request.getParameter("action") == null
                ? "default"
                : request.getParameter("action");

        switch (action) {
            case "add":
                addProduct(request);
                break;
            default:
                
        }
        response.sendRedirect("dashboard");
        }

    private void addProduct(HttpServletRequest request) {
        try {
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int categoryId = Integer.parseInt(request.getParameter("category"));
            String description = request.getParameter("description");
            

            // get image
            Part part = request.getPart("image");

            // định nghĩa đường dẫn lưu ảnh vào bên trong
            // lưu trên phía server
            // "/Images" : folder chứa ảnh
            String path = request.getServletContext().getRealPath("/images");

            // tìm ra đường dẫn đến ảnh đó
            File dir = new File(path);

            // xem đường dẫn này tồn tại chưa
            if (!dir.exists()) {
                dir.mkdirs();
            }

            // tao ra file chua anh do
            // lấy ra tên của file đó: part.getSubmittedFileName()
            // vd: abc.img
            File image = new File(dir, part.getSubmittedFileName());
            // ghi file vao duong dan
            part.write(image.getAbsolutePath());

            // định nghĩa or lưu lại đường dẫn
            // lấy ra context path của project
            String pathOfFile = request.getContextPath() + "/images/" + image.getName();

            Product product = Product.builder()
                    .name(name)
                    .price(price)
                    .quantity(quantity)
                    .description(description)
                    .categoryId(categoryId)
                    .image(pathOfFile)
                    .build();
            // luu vao DB
            proDao.insert(product);

        } catch (NumberFormatException | IOException | ServletException ex) {
            ex.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
