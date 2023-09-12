package control.customer.service;

import dao.admin.ServicesDAO;
import model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserViewServiceServlet", value = "/user_service")
public class UserViewServiceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = new ServicesDAO().getProductList();
        request.setAttribute("c", list);
        System.out.println(list);
        request.getRequestDispatcher("minh_services.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
