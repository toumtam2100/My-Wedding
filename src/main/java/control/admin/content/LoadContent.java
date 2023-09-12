package control.admin.content;

import dao.admin.ContentDAO;
import model.Content;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadContent", value = "/LoadContent")
public class LoadContent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Content> list = new ContentDAO().getContentList();
        request.setAttribute("list", list);
        request.getRequestDispatcher("adminManageContents.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
