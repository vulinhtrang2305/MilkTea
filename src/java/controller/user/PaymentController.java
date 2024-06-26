/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.implement.OrderDAO;
import dal.implement.OrderDetailsDAO;
import dal.implement.ProductDAO;
import entity.Account;
import entity.Order;
import entity.OrderDetails;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

/**
 *
 * @author chucken
 */
public class PaymentController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PaymentController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("views/user/payment/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") == null
                ? "" : request.getParameter("action");

        switch (action) {
            case "add-product":
                addProduct(request, response);
                break;

            case "change-quantity":
                changeQuantity(request, response);
                break;

            case "delete":
                delete(request, response);
                break;
                
            case "check-out":
                checkOut(request, response);
                break;
                
            default:
                throw new AssertionError();
        }
        response.sendRedirect("payment");
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // get ve session
        HttpSession session = request.getSession();
        // get ve product id de biet se them sp nao vao gio hang
        int id = Integer.parseInt(request.getParameter("id"));
        //get ve quantity
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        // lay ve cart tren session , chua co thi tao moi
        Order cart = (Order) session.getAttribute("cart");
        if (cart == null) {
            cart = new Order();
        }
        // them order details vao cart
        OrderDetails orderDetails = new OrderDetails();
        orderDetails.setProductId(id);
        orderDetails.setQuantity(quantity);

        addOrderDetailsToOrder(orderDetails, cart);
        // set lai cart moi len tren session
        session.setAttribute("cart", cart);
        // add xong chuyen trang
        response.sendRedirect("payment");
    }

    private void addOrderDetailsToOrder(OrderDetails od, Order cart) {
        boolean isAdd = false;

        for (OrderDetails obj : cart.getListOrderDetails()) {
            if (obj.getProductId() == od.getProductId()) {
                obj.setQuantity(obj.getQuantity() + od.getQuantity());
                isAdd = true;
            }
        }
        if (isAdd == false) {
            cart.getListOrderDetails().add(od);
        }
    }

    private void changeQuantity(HttpServletRequest request, HttpServletResponse response) {
        // lay ve cart
        HttpSession session = request.getSession();
        try {
            // get ve id se thay doi
            int id = Integer.parseInt(request.getParameter("id"));

            //get ve quantity
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            // lay ve cart
            Order cart = (Order) session.getAttribute("cart");

            //thay doi quantity
            for (OrderDetails listOrderDetail : cart.getListOrderDetails()) {
                if (listOrderDetail.getProductId() == id) {
                    listOrderDetail.setQuantity(quantity);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        //get ve id
        int id = Integer.parseInt(request.getParameter("id"));
        
        HttpSession session = request.getSession();
        Order cart = (Order) session.getAttribute("cart");
        
        OrderDetails od = null;
        for (OrderDetails obj : cart.getListOrderDetails()) {
            if(obj.getProductId() == id) {
                od = obj;
            }
        }
        cart.getListOrderDetails().remove(od);
        session.setAttribute("cart", cart);
    }

    private void checkOut(HttpServletRequest request, HttpServletResponse response) {
        Product product = new Product();
        // lay ve cart
        HttpSession session = request.getSession();
        Order cart = (Order) session.getAttribute("cart");
        //lay ve account id dang mua hang
        int accountId = ( (Account) session.getAttribute("account")).getId();
            
        //get ra list product
        List<Product> listProduct = (List<Product>) session.getAttribute("listProduct");
        
        //amount(tinh tong tien)
        int amount = caculateAmount(cart, listProduct);
        
        //insert ve order de biet dc order details do thuoc hoa don nao
        //set information
        cart.setAccountId(accountId);
        cart.setAmount(amount);
//        cart.setCreateAt(Timestamp.valueOf(LocalDateTime.now()));
        cart.setCreateAt(Timestamp.valueOf(LocalDateTime.now()));
        
        
        OrderDAO orderDAO = new OrderDAO();
        OrderDetailsDAO odDao = new OrderDetailsDAO();
        int orderId = orderDAO.insert(cart);
        
        for (OrderDetails obj : cart.getListOrderDetails()) {
            obj.setOrderId(orderId);
            odDao.insert(obj);
        }
        // khi da lay ra order > tru di so luong sp co trong Db
        ProductDAO productDAO = new ProductDAO();
        productDAO.deleteQuantity(amount, product);
        
        session.removeAttribute("cart");
    }

    private int caculateAmount(Order cart, List<Product> listProduct) {
        int amount = 0;
        for (OrderDetails od : cart.getListOrderDetails()) {
            amount+=(od.getQuantity() * findPriceById(listProduct, od.getProductId()));
        }
        return amount;
    }

    private float findPriceById(List<Product> listProduct, int productId) {
        for (Product product : listProduct) {
            if(product.getId() == productId) {
                return product.getPrice();
            }
        }
        return 0;
    }

}
