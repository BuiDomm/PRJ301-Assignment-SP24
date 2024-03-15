/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import EmailAutoman.SendEmail;
import dao.BillDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Checkout;
import model.Customer;
import model.Item;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author ASUS
 */
public class AddOrder extends HttpServlet {

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
            out.println("<title>Servlet AddOrder</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddOrder at " + request.getContextPath() + "</h1>");
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
        Checkout checkout = (Checkout) session.getAttribute("checkout");
        List<Item> listItem = checkout.getList();
        BillDAO bd = new BillDAO();
        Customer cs = (Customer) session.getAttribute("account");
        if (cs != null) {
            bd.addBill(cs, checkout);

            PrintWriter pw = response.getWriter();
            pw.print("<script> alert('Bill Genrated...')</script>");

            try {
                Document document = new Document();
                PdfWriter.getInstance(document, new FileOutputStream("C:\\Users\\ASUS\\OneDrive\\Documents\\NetBeansProjects\\test.pdf"));
                document.open();
                Paragraph p = new Paragraph();
                p.add("Bill Details");
                p.setAlignment(Element.ALIGN_CENTER);
                document.add(p);
                document.add(Chunk.NEWLINE);
                document.add(Chunk.NEWLINE);
                PdfPTable table = new PdfPTable(new float[]{12, 30, 30, 30, 30, 30});
                table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
                table.addCell("Num");
                table.addCell("Book Name");
                table.addCell("Author");
                table.addCell("Category");
                table.addCell("Date of hire");
                table.addCell("Return Date");

                table.setHeaderRows(1);

                PdfPCell[] cell = table.getRow(0).getCells();
                for (int j = 0; j < cell.length; j++) {
                    cell[j].setBackgroundColor(BaseColor.GRAY);
                }

                for (int n = 0; n < listItem.size(); n++) {
                    table.addCell(n + "");
                    table.addCell(listItem.get(n).getBook().getName());
                    table.addCell(listItem.get(n).getBook().getAuthor());
                    table.addCell(listItem.get(n).getBook().getCategory().getName());

                    LocalDateTime now = LocalDateTime.now();
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                    String formattedDateTime = now.format(formatter);
                    table.addCell(formattedDateTime);
                    LocalDateTime futureDateTime = now.plusDays(7);
                    DateTimeFormatter formatter7Day = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                    String formattedDateTime7Day = futureDateTime.format(formatter7Day);
                    table.addCell(formattedDateTime7Day);
                }
                document.add(table);
                document.close();
                SendEmail se = new SendEmail();
                se.sendBill(cs.getEmail(), cs.getFirstName()+ " " + cs.getSurname());
                
                listItem.clear();

            } catch (Exception e) {
                e.printStackTrace();
            }
            response.sendRedirect("bookrent");
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
