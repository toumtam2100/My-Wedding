package control.customer.service;

import dao.admin.AccountDAO;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "LoadUserContact", value = "/LoadUserContact")
public class LoadUserContact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AccountDAO dao = new AccountDAO();
        String name = (String) request.getSession().getAttribute("NAME");
        System.out.println(name);
        User user =  dao.getCustomerByUsername(name);
        request.setAttribute("list", user);
        request.getRequestDispatcher("contact.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        int tel = Integer.parseInt(request.getParameter("tel"));
        String date = request.getParameter("date");


    }
}
