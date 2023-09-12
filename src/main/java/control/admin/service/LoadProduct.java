package control.admin.service;

import dao.admin.ServicesDAO;
import model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadProduct", value = "/LoadProduct")
public class LoadProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        List<Product> list = new ServicesDAO().getProductList();
        request.setAttribute("list", list);
        request.getRequestDispatcher("adminManageServices.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
