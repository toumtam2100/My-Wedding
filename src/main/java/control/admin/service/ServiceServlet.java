package control.admin.service;

import dao.admin.ServicesDAO;
import model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@MultipartConfig
@WebServlet(name = "ServiceServlet", value = "/service")
public class ServiceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = new ServicesDAO().getProductList();
        request.setAttribute("c", list);
        request.getRequestDispatcher("adminManageServices.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        int cate = Integer.parseInt(request.getParameter("category"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        boolean status = Boolean.parseBoolean(request.getParameter("status"));
        String description = request.getParameter("description");
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
        boolean check_status = new ServicesDAO().addProduct(name, quantity, price, cate, description, ("image/" + fileName), status);
        String msg = "";
        request.setAttribute("MESSAGE", msg);
        if (check_status){
            msg = "<div class=\"alert alert-success\" role=\"alert\">Thêm mới dịch vụ thành công</div>";
            request.setAttribute("MESSAGE",msg );
            response.sendRedirect("service");
        } else {
            msg = "<div class=\"alert alert-danger\" role=\"alert\">Có lỗi gì đó</div>";
            request.setAttribute("MESSAGE", msg);
            response.sendRedirect("service");
        }
    }
}
