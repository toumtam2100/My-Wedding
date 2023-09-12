/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.admin.user;

import dao.admin.AccountDAO;
import model.User;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.io.IOException;

/**
 *
 * @author FPTSHOP
 */
@MultipartConfig
@WebServlet(name = "UpdateControl", urlPatterns = {"/update"})
public class UpdateControl extends HttpServlet {

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
        int user = Integer.parseInt(request.getParameter("sid"));

        AccountDAO dao = new AccountDAO();
        User list = dao.getCustomerById(user);
        request.setAttribute("st", list);
        request.getRequestDispatcher("updateAccount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("name");
        String role = request.getParameter("role");
        String fullname = request.getParameter("fullname");
        AccountDAO dao = new AccountDAO();
        dao.updateUser(id, username, fullname, role);
        response.sendRedirect("LoadServlet");
        System.out.println(dao.getAccountList());
    }

}
