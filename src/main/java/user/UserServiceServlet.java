package user;

import dao.admin.ServicesDAO;
import model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServiceServlet", value = "/UserServiceServlet")
public class UserServiceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = new ServicesDAO().getProductListNametoCateID();
        request.setAttribute("c", list);
        for (Product i : list) {
            System.out.println(i.getCategoryName());
        }
        request.getRequestDispatcher("minh_services.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
