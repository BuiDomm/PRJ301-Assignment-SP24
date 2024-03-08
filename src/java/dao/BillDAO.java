/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.servlet.http.HttpSession;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Book;
import model.Category;
import model.Checkout;
import model.Customer;
import model.Item;
import model.Publisher;

/**
 *
 * @author ASUS
 */
public class BillDAO extends DBContext {

    public void addBill(Customer c, Checkout cout) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.getYear() + "-" + curDate.getMonthValue() + "-" + curDate.getDayOfMonth() + "";
        try {
            String sql = "Insert Into Bill(id_customer,start_time,is_returned) \n"
                    + "Values(?,?,?)";
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setInt(1, c.getIdCustomer());
            st.setNString(2, date);
            st.setBoolean(3, true);
            st.executeUpdate();
            String sql1 = "Select top 1 id_bill from Bill Order By id_bill desc";
            PreparedStatement st1 = getConnection().prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            if (rs.next()) {
                int id_bill = rs.getInt(1);
                for (Item i : cout.getList()) {
                    String sql2 = "Insert Into Billdetail Values (?,?,?)";
                    PreparedStatement st2 = getConnection().prepareStatement(sql2);
                    st2.setInt(1, id_bill);
                    st2.setInt(2, i.getBook().getIdBook());
                    st2.setInt(3, 1);
                    st2.executeUpdate();
                    String sql3 = "UPDATE book\n"
                            + "SET amount = amount -1 \n"
                            + "WHERE id_book = ?";
                    PreparedStatement st3 = getConnection().prepareStatement(sql3);
                    st3.setInt(1, i.getBook().getIdBook());
                    st3.executeUpdate();

                }
            }

        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

    public List<Checkout> getAllBill(int id_customer) {
        List<Checkout> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        String sql = "SELECT * FROM Bill\n"
                + "where id_customer = ?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id_customer);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                CustomerDAO comd = new CustomerDAO();
                int id_bill = rs.getInt("id_bill");
                String date = rs.getString("start_time");
                boolean is_return = rs.getBoolean("is_returned");
                List<Item> listItem = getItemByIDBill(id_bill);
                Customer com = comd.findById(id_customer);
                Checkout c = new Checkout(id_bill, date, listItem, com, is_return);
                list.add(c);

            }

        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Item> getItemByIDBill(int id_bill) {
        List<Item> list = new ArrayList<>();
        Set<Item> set = new HashSet<>();
        CategoryDAO cd = new CategoryDAO();
        String sql = "SELECT * FROM Billdetail\n"
                + "where id_bill = ?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id_bill);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                BookDAO bd = new BookDAO();
                int id_book = rs.getInt("id_book");
                int num = rs.getInt("number");
                Book b = bd.findById(id_book);
                Item i = new Item(b, num);
                set.add(i);
            }

        } catch (Exception ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        List<Item> listItem = new ArrayList<>(set);
        return listItem;
    }

    public boolean refundBook(int id_bill) {
        String sql = " Update Bill\n"
                + "SET is_returned = 0\n"
                + "Where id_bill = ?";
        PreparedStatement ps;
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id_bill);

            int rowAffect = ps.executeUpdate();
            
            
                String sql2 = "UPDATE book\n"
                    + "SET amount = amount +1 \n"
                    + "FROM Bill AS B\n"
                    + "JOIN Billdetail ON Billdetail.id_bill = B.id_bill\n"
                    + "WHERE B.id_bill = ? AND book.id_book = Billdetail.id_book;";
                PreparedStatement ps2 = getConnection().prepareStatement(sql2);
                ps2.setInt(1, id_bill);
                ps2.executeUpdate();
            if (rowAffect > 0) {
                return true;
            }
        } catch (Exception ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public static void main(String[] args) {
        BillDAO bd = new BillDAO();
//        System.out.println(bd.refundBook(19));

    }
}
