/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Book;
import model.Category;
import model.Customer;
import model.Publisher;

/**
 *
 * @author ASUS
 */
public class FavoriteDAO extends DBContext {

    public boolean insert(Customer cs, Book book) {

        String sql = "INSERT INTO favoritebook(id_username, id_book) Values(?,?) ";
        PreparedStatement ps;
        try {

            ps = getConnection().prepareStatement(sql);
            ps.setInt(1, cs.getIdCustomer());
            ps.setInt(2, book.getIdBook());
            int rowAffect = ps.executeUpdate();

            if (rowAffect > 0) {

                return true;
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public List<Book> getAllByID(int id) {
        List<Book> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        String sql = "select  * from book\n"
                + "JOIN favoritebook as f on f.id_book = book.id_book\n"
                + "JOIN customeraccount as c on c.id_username = f.id_username\n"
                + "Where c.id_username = ?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
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

    public boolean delete(int id_book, int id_cus) {
        String sql = "delete from favoritebook\n"
                + "where id_book = ? AND id_username = ?";
        PreparedStatement ps;
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id_book);
            ps.setInt(2, id_cus);
                
            int rowAffect = ps.executeUpdate();
            if (rowAffect > 0) {

            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);

        }

        return false;
    }

    public static void main(String[] args) {
        FavoriteDAO fd = new FavoriteDAO();
        System.out.println(fd.getAllByID(19));
    }

}
