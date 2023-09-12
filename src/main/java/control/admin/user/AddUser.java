package control.admin.user;

import dao.admin.AccountDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.UUID;

@WebServlet(name = "AddUser", value = "/AddUser")
public class AddUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String hash = UUID.randomUUID().toString();

        AccountDAO dao = new AccountDAO();
        dao.addUser(username,password,fullname,email,tel, hash);
        response.sendRedirect("LoadServlet");
    }
}
