
package control.admin.user;

import dao.admin.AccountDAO;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.io.IOException;


@WebServlet(name = "DeleteControl", urlPatterns = {"/DeleteControl"})
public class DeleteControl extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //b1: get sid from jsp
        int id = Integer.parseInt(request.getParameter("sid"));
        //b2: pass sid to dao
        AccountDAO dao = new AccountDAO();
        dao.deleteUser(id);
        RequestDispatcher rd = request.getRequestDispatcher("LoadServlet");
        rd.forward(request,response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
