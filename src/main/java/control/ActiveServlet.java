package control;

import dao.admin.AccountDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ActiveServlet", value = "/active")
public class ActiveServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("active.jsp").forward(request, response);

    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hash = request.getParameter("hash");
        boolean check = new AccountDAO().activeMail(hash);
        if (check){
            request.setAttribute("message", "<div class=\"alert alert-success\" role=\"alert\">Kích hoạt tài khoản thành công.</div>");
            response.sendRedirect("LoginServlet");
        } else {
            request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Có lỗi xảy ra.</div>");
            response.sendRedirect("LoginServlet");
        }
    }
}
