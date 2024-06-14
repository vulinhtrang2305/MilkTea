/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.implement.CategoryDAO;
import dal.implement.ProductDAO;
import entity.Category;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author chucken
 */
public class DashboardServlet extends HttpServlet {
    // lay toan bo du lieu tu DB len
    ProductDAO dao = new ProductDAO();
    CategoryDAO categoryDao = new CategoryDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // get ve du lie 
        HttpSession session = request.getSession();
        
        // get ve 1 list vi co nhieu sp (product DAO)
        List<Product> listProduct = dao.findAll();
        // get ve 1 list vi co nhieu loại sp (category DAO)
        List<Category> listCategory = categoryDao.findAll();
        
        session.setAttribute("listProduct", listProduct);
        session.setAttribute("listCategory", listCategory);
        
        // chuyen het du lieu sang trang dashboard.jsp
        request.getRequestDispatcher("../views/admin/dashboard.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
