package control.admin.category;

import com.google.gson.Gson;
import dao.admin.CategoryDAO;
import dao.admin.ServicesDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CategoryServlet", value = "/category")
public class CategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryDAO dao = new CategoryDAO();
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        boolean checkName = dao.checkName(name);
        if (checkName){
            boolean check = dao.addCategory(description, name);
            if (check){
                String json = new Gson().toJson(true);
                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                out.print(json);
                out.flush();
            } else {
                String json = new Gson().toJson(false);
                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                out.print(json);
                out.flush();
            }
        } else {
            String json = new Gson().toJson(-1);
            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print(json);
            out.flush();
        }

    }
}
