package control.admin.service;

import dao.admin.ServicesDAO;
import model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateProductControl", value = "/update_product")
public class UpdateProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int product = Integer.parseInt(request.getParameter("id"));

        ServicesDAO dao = new ServicesDAO();
        Product product1 = dao.getProductByID(product);
        request.setAttribute("c", product1);
        request.getRequestDispatcher("manageService.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String productname = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String category = request.getParameter("category");
        int price = Integer.parseInt(request.getParameter("price"));


        Part photo = request.getPart("image");
        String path = "image/" + photo.getSubmittedFileName();
        String filename = request.getServletContext().getRealPath(path);


        boolean status = Boolean.parseBoolean(request.getParameter("status"));
        String description = request.getParameter("description");

        ServicesDAO dao = new ServicesDAO();
        dao.updateProduct(productname, category, price, quantity, filename, status,description, id);
    }
}