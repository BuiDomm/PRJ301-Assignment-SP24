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
import model.Publisher;

/**
 *
 * @author ASUS
 */
public class PublisherDAO extends DBContext implements BaseDAO<Publisher> {

    @Override
    public List<Publisher> getAll() {
                List<Publisher> list = new ArrayList<>();
        String sql = "SELECT * FROM publisher";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_publisher = rs.getInt(1);
                String name_publisher = rs.getString("name_publisher");
                Publisher pb = findById(id_publisher);
                list.add(pb);
            }

        } catch (Exception ex) {
            Logger.getLogger(PublisherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

     @Override
    public Publisher findById(int id) {
        String sql = " SELECT * from publisher where id_publisher=?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Publisher(rs.getInt(1), rs.getString(2));
            }
        } catch (Exception ex) {
            Logger.getLogger(PublisherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    @Override
    public boolean insert(Publisher newObject) {
              String sql = "Insert Into publisher(name_publisher) Values(?)";
        PreparedStatement ps;
        try {
            ps = getConnection().prepareStatement(sql);
  
            ps.setString(1, newObject.getName());
   
            int rowAffect = ps.executeUpdate();
            if (rowAffect > 0) {

                return true;
            }
        } catch (Exception ex) {
            Logger.getLogger(PublisherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean update(Publisher newObject) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from publisher\n"
                + "where id_publisher = ?";
        PreparedStatement ps;
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            int rowAffect = ps.executeUpdate();
            if (rowAffect > 0) {
            }
        } catch (Exception ex) {
            Logger.getLogger(PublisherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public static void main(String[] args) {
        PublisherDAO pb = new PublisherDAO();
        Publisher pbi = new Publisher(2, "Giao Duc va Thoi Dai");
//        pb.insert(pbi);

        Publisher pp = pb.findById(1);
        
        System.out.println(pb.getAll());
    }
    
}
