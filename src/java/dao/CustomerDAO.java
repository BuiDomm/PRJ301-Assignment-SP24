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
public class CustomerDAO extends DBContext implements BaseDAO<Customer> {

    @Override
    public List<Customer> getAll() {

        List<Customer> list = new ArrayList<>();
        String sql = "SELECT * FROM customeraccount";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_username = rs.getInt(1);
                String username = rs.getString("username");
                String password = rs.getString("password");
                String first_name = rs.getString("first_name");
                String surname = rs.getString("surname");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                Customer c = new Customer(username, password, first_name, surname, email, phone);
                list.add(c);
            }

        } catch (Exception ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;

    }

    @Override
    public Customer findById(int id) {
        String sql = "SELECT * FROM customeraccount \n"
                + "Where id_username =? ";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_username = rs.getInt(1);
                String username = rs.getString("username");
                String password = rs.getString("password");
                String firstName = rs.getString("first_name");
                String surname = rs.getString("surname");
                String email = rs.getString("email");
                String phone = rs.getString("phonenumber");
                Customer c = new Customer(id_username, username, password, firstName, surname, email, phone);
                return c;

            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Customer findByUsername(String user) {
        String sql = "SELECT * FROM customeraccount \n"
                + "Where username = ? ";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_username = rs.getInt(1);
                String username = rs.getString("username");
                String password = rs.getString("password");
                String firstName = rs.getString("first_name");
                String surname = rs.getString("surname");
                String email = rs.getString("email");
                String phone = rs.getString("phonenumber");
                Customer c = new Customer(id_username, username, password, firstName, surname, email, phone);
                return c;

            }
        } catch (Exception ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public boolean insert(Customer newObject) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean update(Customer newObject) {
        String sql = "Update customeraccount\n"
                + "Set password =?,\n"
                + "first_name=?, \n"
                + "surname = ?,\n"
                + "email = ?,\n"
                + "phonenumber = ?\n"
                + "Where id_username = ? ";
        PreparedStatement ps;
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setString(1, newObject.getPassword());
            ps.setString(2, newObject.getFirstName());
            ps.setString(3, newObject.getSurname());
            ps.setString(4, newObject.getEmail());
            ps.setString(5, newObject.getPhoneNumber());
            ps.setInt(6, newObject.getIdCustomer());

            int rowAffect = ps.executeUpdate();
            if (rowAffect > 0) {

                return true;
            }
        } catch (Exception ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Customer login(String user, String pass) {

        String sql = "select * from customeraccount where username = ?\n"
                + "and password = ?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public boolean register(Customer newCustomer) {
        String sql = "INSERT INTO customeraccount(first_name,surname,email,phonenumber,username,password) Values(?,?,?,?,?,?)";

        try {
            PreparedStatement st = getConnection().prepareStatement(sql);

            st.setString(1, newCustomer.getFirstName());
            st.setString(2, newCustomer.getSurname());
            st.setString(3, newCustomer.getEmail());
            st.setString(4, newCustomer.getPhoneNumber());
            st.setString(5, newCustomer.getUsername());
            st.setString(6, newCustomer.getPassword());

            int soLuong = st.executeUpdate();
            if (soLuong > 0) {

                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public Customer fogortPass(String username, String email) {
        String sql = " Select * From customeraccount \n"
                + "Where username = ? AND email = ?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_username = rs.getInt(1);
                Customer c = findById(id_username);
                if (c != null) {
                    return c;
                }

            }
        } catch (Exception ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public boolean changePass(int id_user, String password) {
        String sql = "Update customeraccount\n"
                + "		set password = ?\n"
                + "		Where id_username = ?";
        Customer c = findById(id_user);
        PreparedStatement ps;
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setString(1, password);
            ps.setInt(2, c.getIdCustomer());

            int rowAffect = ps.executeUpdate();
            if (rowAffect > 0) {

                return true;
            }
        } catch (Exception ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public static void main(String[] args) {
        CustomerDAO cd = new CustomerDAO();
        System.out.println(cd.changePass(5, "phuong"));
    }

}
