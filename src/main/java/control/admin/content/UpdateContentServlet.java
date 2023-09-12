package control.admin.content;

import dao.admin.AccountDAO;
import dao.admin.ContentDAO;
import model.Content;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.Date;


@MultipartConfig
@WebServlet(name = "UpdateContentServlet", urlPatterns = {"/update_content"})
public class UpdateContentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            int content = Integer.parseInt(request.getParameter("cid"));

        ContentDAO dao = new ContentDAO();
        Content list = dao.getContentByID(content);
        request.setAttribute("clist", list);
        request.getRequestDispatcher("updateContent.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int contentid = Integer.parseInt(request.getParameter("contentid"));
        String contenttype = request.getParameter("contenttype");
        String contentname = request.getParameter("contentname");
        String lable = request.getParameter("lable");
        String secondlable = request.getParameter("secondlable");
        int likehit = Integer.parseInt(request.getParameter("likehit"));
        String description = request.getParameter("description");
        String comment = request.getParameter("comment");
        Part part = request.getPart("image");
        String realPath = request.getServletContext().getRealPath("/image");
        String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        if (!fileName.equals("")){
            if (!Files.exists(Paths.get(realPath))) {
                Files.createDirectory(Paths.get(realPath));
            }
            fileName = new Timestamp(new Date().getTime()).getTime() + fileName;
            part.write(realPath + "/" + fileName);
            System.out.println(realPath + "/" + fileName);
        }

        ContentDAO dao = new ContentDAO();
        dao.updateContent(contentid, contenttype, contentname, lable, secondlable, likehit, ("image/" + fileName), description, comment);
        response.sendRedirect("ContentServlet");
        System.out.println(dao.getContentList());
    }

}