package control.admin.service;

import dao.admin.AccountDAO;
import dao.admin.ServicesDAO;
import model.Product;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SearchProductServlet", value = "/SearchProductServlet")
public class SearchProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("name");
        ArrayList<Product> result = new ServicesDAO().searchProduct(productName);
        request.setAttribute("list", result);
        request.setAttribute("action", "search");
        request.getRequestDispatcher("adminManageService.jsp").forward(request, response);
    }
}
