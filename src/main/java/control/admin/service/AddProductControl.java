
package control.admin.service;

import dao.admin.ServicesDAO;
import model.Product;
import model.User;
import dao.admin.AccountDAO;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

/**
 *
 * @author FPTSHOP
 */
@MultipartConfig
@WebServlet(name = "AddControl", urlPatterns = {"/admin/AddProduct"})
public class AddProductControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServicesDAO dao = new ServicesDAO();
        List<Product> products = dao.getProductList();
        request.setAttribute("c", products);
        request.getRequestDispatcher("services.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "";
        String productname = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int category = Integer.parseInt(request.getParameter("category"));
        int price = Integer.parseInt(request.getParameter("price"));
        boolean status = Boolean.parseBoolean(request.getParameter("status"));
        String description = request.getParameter("description");

        //Luu thong tin anh
        Part photo = request.getPart("image");
        String path = "image/" + photo.getSubmittedFileName();
        String filename = request.getServletContext().getRealPath(path);

        Part part = request.getPart("image");
        String realPath = request.getServletContext().getRealPath("/image");
        String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        if (!Files.exists(Paths.get(realPath))) {
            Files.createDirectory(Paths.get(realPath));
        }
        part.write(realPath + "/" + fileName);

        ServicesDAO dao = new ServicesDAO();
        dao.addProduct(productname, quantity,price,category,description,path, status);
        response.sendRedirect("LoadServlet");

// Thuc hien bao loi len trang jsp
        try (PrintWriter out = response.getWriter()) {
            if (productname == null) {
                request.setAttribute("MESSAGE", "Product Name is empty!");
            } else if (duplicationName(productname, dao.getProductList())) {
                request.setAttribute("MESSAGE", "Exist Product Name " + productname);
                url = "addProduct.jsp";
            } else {
                url = "LoadServlet";
                dao.addProduct(productname, quantity,price,category,description,path, status);
                response.sendRedirect("LoadServlet");
                return;
            }
            System.out.println("url: " + url);
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);

        }
    }

    //Validate
    boolean duplicationName(String name, List<Product> ls) {
        for (int i = 0; i < ls.size(); i++) {
            if (ls.get(i).getProductName().equalsIgnoreCase(name)) {
                return true;
            }
        }
        return false;
    }

    boolean checkStatus(String id, List<Product> ls){
        for (int j =0 ; j <ls.size(); j++){
            if (ls.get(j).getQuantity() > 0){
                return true;
            }
        }
        return false;
    }

}
