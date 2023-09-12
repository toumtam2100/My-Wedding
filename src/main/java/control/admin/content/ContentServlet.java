package control.admin.content;
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
import java.util.List;
import java.util.UUID;


@MultipartConfig
@WebServlet(name = "ContentServlet", urlPatterns = {"/content"})
public class ContentServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws  IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        ContentDAO dao = new ContentDAO();
        List<Content> list = dao.getContentList();
//        System.out.println(list);
        request.setAttribute("list", list);
        request.getRequestDispatcher("adminManageContents.jsp").forward(request, response);
        request.getRequestDispatcher("home.jsp").forward(request, response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String contentname = request.getParameter("contentname");
        String contenttype = request.getParameter("contenttype");
        String lable = request.getParameter("label");
        String secondlable = request.getParameter("secondlable");
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
        dao.addContent(contentname, contenttype,lable, secondlable,0,  description,("image/" + fileName), "");
        response.sendRedirect("content");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



}

