/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Book;
import model.Category;
import model.Publisher;

/**
 *
 * @author ASUS
 */
public class BookDAO extends DBContext implements BaseDAO<Book> {

    @Override
    public List<Book> getAll() {
        List<Book> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        String sql = "SELECT * FROM book";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_book = rs.getInt(1);
                String name_book = rs.getString("name_book");
                String author = rs.getString("author");
                int id_category = rs.getInt("id_category");
                int id_publisher = rs.getInt("id_publisher");
                int year_pushlisher = rs.getInt("year_publisher");
                String img = rs.getString("img_book");
                Category c = cd.findById(id_category);
                PublisherDAO pd = new PublisherDAO();
                Publisher p = pd.findById(id_publisher);
                int count = rs.getInt("amount");
                Book b = new Book(id_book, name_book, author, c, p, year_pushlisher, img, count);
                list.add(b);
            }

        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    @Override
    public Book findById(int id) {
        String sql = "SELECT * FROM book\n"
                + "Where id_book = ?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PublisherDAO pd = new PublisherDAO();
                Publisher p = pd.findById(rs.getInt("id_publisher"));
                CategoryDAO cd = new CategoryDAO();
                Category c = cd.findById(rs.getInt("id_category"));
                int id_book = rs.getInt(1);
                String name_book = rs.getString("name_book");
                String author = rs.getString("author");
                String img = rs.getString("img_book");

                int year_pushlisher = rs.getInt("year_publisher");
                int count = rs.getInt("count");
                return new Book(id_book, name_book, author, c, p, year_pushlisher, img, count);
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public boolean insert(Book newObject) {
        String sql = "INSERT INTO book(name_book,author,id_category,id_publisher,year_publisher,img_book,amount) Values(?,?,?,?,?,?,?)";
        PreparedStatement ps;
        try {

            ps = getConnection().prepareStatement(sql);
            ps.setString(1, newObject.getName());
            ps.setString(2, newObject.getAuthor());
            ps.setInt(3, newObject.getCategory().getIdCategory());
            ps.setInt(4, newObject.getPublisher().getIdPublisher());
            ps.setInt(5, newObject.getYearDate());
            ps.setString(6, newObject.getImg());
            ps.setInt(7, newObject.getCount());

            int rowAffect = ps.executeUpdate();
            if (rowAffect > 0) {

                return true;
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean update(Book oldObject) {
        String sql = "Update book Set\n"
                + "name_book = ?, \n"
                + "author = ?, \n"
                + "id_category = ?, \n"
                + "id_publisher = ?, \n"
                + "year_publisher = ?,\n"
                + "img_book = ?, \n"
                + "amout = ?"
                + " where id_book = ? ";
        PreparedStatement ps;
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setString(1, oldObject.getName());
            ps.setString(2, oldObject.getAuthor());
            ps.setInt(3, oldObject.getCategory().getIdCategory());
            ps.setInt(4, oldObject.getPublisher().getIdPublisher());
            ps.setInt(5, oldObject.getYearDate());
            ps.setString(6, oldObject.getImg());
            ps.setInt(7, oldObject.getCount());

            int rowAffect = ps.executeUpdate();
            if (rowAffect > 0) {

                return true;
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from book\n"
                + "where id_book = ?";
        PreparedStatement ps;
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            int rowAffect = ps.executeUpdate();
            if (rowAffect > 0) {

            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);

        }

        return false;
    }

    public static void main(String[] args) throws ParseException {
        BookDAO bd = new BookDAO();
        CategoryDAO cd = new CategoryDAO();
        Category c = cd.findById(1);
        PublisherDAO pb = new PublisherDAO();
        Publisher p = pb.findById(1);
        Book b = new Book("Đàn bà khó hiểu đúng hok ?", "Bui Nhan", c, p, 2022, "hjhj.jpg", 2);
//        bd.insert(b);
        System.out.println(b);
        bd.delete(4);

    }

}
