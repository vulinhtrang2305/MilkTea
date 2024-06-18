package controller.authen;

import dal.implement.AccountDAO;
import entity.Account;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class AuthenticationController extends HttpServlet {

    AccountDAO accountDao = new AccountDAO();

    // do get dùng để quản lí login và logout
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get ve action
        String action = request.getParameter("action") != null
                ? request.getParameter("action")
                : "";

        String url;
        switch (action) {
            case "login":
                url = "views/authen/login.jsp";
                break;

            case "log-out":
                url = logOut(request, response);
                break;
            
            case "register":
                url = "views/authen/register.jsp";
                break;
            default:
                url = "home";
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    // do post de xu ly login
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // get ve action
        String action = request.getParameter("action") != null
                ? request.getParameter("action")
                : "";

        // dua tren action xu ly request
        String url;

        switch (action) {
            case "login":
                url = loginDoPost(request, response);
                break;
                
            case "register":
                url = register(request,response);
                break;
            default:
                url = "home";
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    // xóa account đã đăng nhập ra khỏi session
    private String logOut(HttpServletRequest request, HttpServletResponse response) {
        // get session
        HttpSession session = request.getSession();
        // log out
        // xoa session cua nguoi nay khoi phien dang nhap
        session.removeAttribute("account");
        return "home";
    }

    private String loginDoPost(HttpServletRequest request, HttpServletResponse response) {
        String url = null;

        // get ve thong tin nguoi dung nhap
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // ktra xem thong tin co ton tai trong db khong
        Account account = Account.builder()
                .username(username)
                .password(password)
                .build();

        Account accountFoundByUsernameAndPass = accountDao.findUsernameAndPass(account);

        // true > tra ve trang home (set account vao session)
        if (accountFoundByUsernameAndPass != null) {
            
            HttpSession session = request.getSession();
            session.setAttribute("account", accountFoundByUsernameAndPass);
            
            // sau khi tim dc thi tra ve trang home
            url = "home";
        } else {
            // false > quay ve lai trang login.jsp (set them thong bao loi)
            request.setAttribute("error", "username or password is incorrect!!");
            url = "views/authen/login.jsp";
        }

        return url;
    }

    private String register(HttpServletRequest request, HttpServletResponse response) {
        // url de xem di ve trang nao
        String url;
        
        // get ve thong tin nguoi dung nhap vao
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Account account = Account.builder()
                        .username(username)
                        .password(password)
                        .build();
        // ktra xem username da ton tai trong DB hay chua
        boolean isExistUsername = accountDao.findByUsername(account);
        
        // true > da ton tai trong db > bao loi > quay tro lai trang register
        if(isExistUsername) {
            request.setAttribute("error", "this username has been register befor");
            url = "views/authen/register.jsp";
        } else {
            // false > add new user vao DB > quay tro lai trang home
            
            // ghi vao DB
            accountDao.insert(account);
            url = "home";
        }
        return url;
    }
}
