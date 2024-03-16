/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BookDAO;
import dao.FavoriteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import model.Book;
import model.Customer;

/**
 *
 * @author ASUS
 */
public class FavoriteServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FavoriteServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FavoriteServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        HttpSession session = request.getSession();

        if (session != null) {
            if (request.getParameter("id") != null) {
                int id = Integer.parseInt(request.getParameter("id"));
                BookDAO bd = new BookDAO();
                Book b = bd.findById(id);
                FavoriteDAO fd = new FavoriteDAO();
                Customer cc = (Customer) session.getAttribute("account");
                int idC = cc.getIdCustomer();
                List<Book> list = fd.getAllByID(idC);

                if (fd.insert((Customer) session.getAttribute("account"), b)) {

                    request.setAttribute("noticesamebook", true);
                    request.getRequestDispatcher("customerbook").forward(request, response);

                } else {
                    request.setAttribute("noticesamebook", false);
                    request.getRequestDispatcher("customerbook").forward(request, response);
                }

            } else {
                FavoriteDAO fd = new FavoriteDAO();
                Customer cc = (Customer) session.getAttribute("account");
                int idC = cc.getIdCustomer();
                List<Book> list = fd.getAllByID(idC);
                request.setAttribute("listfavoritebook", list);
                request.getRequestDispatcher("favoritebook.jsp").forward(request, response);

            }

        } else {
            response.sendRedirect("notfound.jsp");
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
