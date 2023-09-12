package control;

import dao.guest.LoginDAO;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "");
        request.setAttribute("MESSAGE", "");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountuser = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(accountuser + " - " + password);
        LoginDAO dao = new LoginDAO();
        boolean isValid = dao.checkLogin(accountuser, password);
        boolean checkEmail = dao.getUserInfo(accountuser,password).isEmail();
        User user = dao.getUserInfo(accountuser,password);
        System.out.println(dao.getUserInfo(accountuser,password).getRole());
        if (isValid){
            if (checkEmail){
                if (user.getRole().equalsIgnoreCase("Admin")){
                    System.out.println("vao admin");
                    HttpSession session = request.getSession();
                    session.setAttribute("NAME", accountuser);
                    response.sendRedirect("LoadServlet");
                } else if (user.getRole().equalsIgnoreCase("User")){
                    HttpSession session = request.getSession();
                    session.setAttribute("NAME", accountuser);
                    response.sendRedirect("home.jsp");
                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("NAME", accountuser);
                    RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                    rd.forward(request,response);
                }
            } else {
                System.out.println("chưa active mail");
                request.setAttribute("message", "");
                request.setAttribute("MESSAGE","Bạn phải <a href=\"/active\">xác nhận email</a> trước, bước này chỉ chưa đầy 1 phút thôi ạ !");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            System.out.println("sai mk");
            request.setAttribute("MESSAGE", "<span><i class=\"bi text-warning bi-exclamation-triangle-fill\"></i></span> LOGIN FAIL! Sai tên tài khoản hoặc mật khẩu");
            request.setAttribute("message", "");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
