/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BookDAO;
import dao.CategoryDAO;
import dao.PublisherDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Book;
import model.Category;
import model.Manager;
import model.Publisher;

/**
 *
 * @author ASUS
 */
public class UpdateBook extends HttpServlet {

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
            out.println("<title>Servlet UpdateBook</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateBook at " + request.getContextPath() + "</h1>");
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
        Manager m = (Manager) session.getAttribute("manageraccount");
        if (m instanceof Manager) {
            PublisherDAO pd = new PublisherDAO();
            CategoryDAO cd = new CategoryDAO();
            BookDAO bd = new BookDAO();
            int id = Integer.parseInt(request.getParameter("id"));
            Book b = bd.findById(id);
            List<Publisher> listPublisher = pd.getAll();
            List<Category> listCategory = cd.getAll();
            request.setAttribute("oldObject", b);
            request.setAttribute("category", listCategory);
            request.setAttribute("publisher", listPublisher);
            request.getRequestDispatcher("updatebook.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Manager m = (Manager) session.getAttribute("manageraccount");
        if (m instanceof Manager) {

            int id = Integer.parseInt(request.getParameter("bookID"));
            String namebook = request.getParameter("namebook");
            int publisherid = Integer.parseInt(request.getParameter("publisherid"));
            String author = request.getParameter("authorname");
            int categoryid = Integer.parseInt(request.getParameter("categoryid"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int year = Integer.parseInt(request.getParameter("yearpublisher"));
            String img = request.getParameter("img");
            PublisherDAO pd = new PublisherDAO();
            CategoryDAO cd = new CategoryDAO();
            Category c = cd.findById(categoryid);
            Publisher p = pd.findById(publisherid);
            BookDAO bd = new BookDAO();
            Book b = bd.findById(id);
            b.setIdBook(id);
            b.setName(namebook);
            b.setPublisher(p);
            b.setAuthor(author);
            b.setCategory(c);
            b.setCount(quantity);
            b.setYearDate(year);
            b.setImg(img);
            bd.update(b);
            response.sendRedirect("book?action=show");

        } else {
            response.sendRedirect("notfound.jsp");
        }

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
