/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.Serializable;
import java.lang.reflect.Array;
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
public class BookDAO extends DBContext implements BaseDAO<Book>, Serializable {

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

    public int getPageNumber() {

        String sql = "Select count(*) as countbook from book";

        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int count = rs.getInt(1);
                int numberpage = 0;
                numberpage = count / 12;
                if (count % 12 != 0) {
                    numberpage = numberpage + 1;
                }
                return numberpage;

            }

        } catch (Exception ex) {
            Logger.getLogger(Page.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Book> getAllFollowPage(int num) {
        List<Book> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        String sql = "Select * from book\n"
                + "	order by id_book\n"
                + "	offset ? rows \n"
                + "	fetch first 12 rows only";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, (num-1)*12);
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
                int id_book = rs.getInt("id_book");
                String name_book = rs.getString("name_book");
                String author = rs.getString("author");
                String img = rs.getString("img_book");

                int year_pushlisher = rs.getInt("year_publisher");
                int count = rs.getInt("amount");
                return new Book(id_book, name_book, author, c, p, year_pushlisher, img, count);
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Book> listBookByIdBill(int id) {
        List<Book> list = new ArrayList<>();
        String sql = "Select * FROM Billdetail\n"
                + "JOIN book On Billdetail.id_book = book.id_book\n"
                + "Where id_bill = ?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PublisherDAO pd = new PublisherDAO();
                Publisher p = pd.findById(rs.getInt("id_publisher"));
                CategoryDAO cd = new CategoryDAO();
                Category c = cd.findById(rs.getInt("id_category"));
                int id_book = rs.getInt("id_book");
                String name_book = rs.getString("name_book");
                String author = rs.getString("author");
                String img = rs.getString("img_book");

                int year_pushlisher = rs.getInt("year_publisher");
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
                + "amount = ?"
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
            ps.setInt(8, oldObject.getIdBook());

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

    public List<Book> listbyPage(List<Book> list, int start, int end) {

        ArrayList<Book> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public List<Book> sortBookAZ() {
        String sql = "Select * FROM book \n"
                + "Order By name_book Asc";
        List<Book> list = new ArrayList();
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PublisherDAO pd = new PublisherDAO();
                Publisher p = pd.findById(rs.getInt("id_publisher"));
                CategoryDAO cd = new CategoryDAO();
                Category c = cd.findById(rs.getInt("id_category"));
                int id_book = rs.getInt("id_book");
                String name_book = rs.getString("name_book");
                String author = rs.getString("author");
                String img = rs.getString("img_book");

                int year_pushlisher = rs.getInt("year_publisher");
                int count = rs.getInt("amount");
                Book b = new Book(id_book, name_book, author, c, p, year_pushlisher, img, count);
                list.add(b);
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;

    }

    public List<Book> sortBookZA() {
        String sql = "Select * FROM book \n"
                + "Order By name_book DESC";
        List<Book> list = new ArrayList();
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PublisherDAO pd = new PublisherDAO();
                Publisher p = pd.findById(rs.getInt("id_publisher"));
                CategoryDAO cd = new CategoryDAO();
                Category c = cd.findById(rs.getInt("id_category"));
                int id_book = rs.getInt("id_book");
                String name_book = rs.getString("name_book");
                String author = rs.getString("author");
                String img = rs.getString("img_book");

                int year_pushlisher = rs.getInt("year_publisher");
                int count = rs.getInt("amount");
                Book b = new Book(id_book, name_book, author, c, p, year_pushlisher, img, count);
                list.add(b);
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;

    }

    public List<Book> sortBookYearFar() {
        String sql = "Select * FROM book \n"
                + "Order By year_publisher Asc";
        List<Book> list = new ArrayList();
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PublisherDAO pd = new PublisherDAO();
                Publisher p = pd.findById(rs.getInt("id_publisher"));
                CategoryDAO cd = new CategoryDAO();
                Category c = cd.findById(rs.getInt("id_category"));
                int id_book = rs.getInt("id_book");
                String name_book = rs.getString("name_book");
                String author = rs.getString("author");
                String img = rs.getString("img_book");

                int year_pushlisher = rs.getInt("year_publisher");
                int count = rs.getInt("amount");
                Book b = new Book(id_book, name_book, author, c, p, year_pushlisher, img, count);
                list.add(b);
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;

    }

    public List<Book> sortBookYearNear() {
        String sql = "Select * FROM book \n"
                + "Order By year_publisher DESC";
        List<Book> list = new ArrayList();
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PublisherDAO pd = new PublisherDAO();
                Publisher p = pd.findById(rs.getInt("id_publisher"));
                CategoryDAO cd = new CategoryDAO();
                Category c = cd.findById(rs.getInt("id_category"));
                int id_book = rs.getInt("id_book");
                String name_book = rs.getString("name_book");
                String author = rs.getString("author");
                String img = rs.getString("img_book");

                int year_pushlisher = rs.getInt("year_publisher");
                int count = rs.getInt("amount");
                Book b = new Book(id_book, name_book, author, c, p, year_pushlisher, img, count);
                list.add(b);
            }
        } catch (Exception ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;

    }

    public List<Book> findBook(String nameBook, String nameAuthor) {

        List<Book> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();

        if (!nameBook.isBlank() && !(nameAuthor.isBlank())) {
            String sql = "SELECT * FROM Book "
                    + "WHERE LOWER(name_book) LIKE LOWER(N'%' + ? + '%') AND LOWER(author) LIKE LOWER(N'%' + ? + '%')";

            try {
                PreparedStatement ps = getConnection().prepareStatement(sql);
                ps.setString(1, nameBook);
                ps.setString(2, nameAuthor);

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
                System.out.println("Hey");
            } catch (Exception ex) {
                Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else if (!nameBook.isBlank()) {
            String sql = "SELECT * FROM Book "
                    + "WHERE name_book LIKE N'%' + ? + '%'";

            try {
                PreparedStatement ps = getConnection().prepareStatement(sql);
                ps.setString(1, nameBook);
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
                    System.out.println("Giua");

                }
            } catch (Exception ex) {
                Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (!nameAuthor.isBlank()) {
            String sql = "SELECT * FROM Book "
                    + "WHERE author LIKE N'%' + ? + '%'";

            try {
                PreparedStatement ps = getConnection().prepareStatement(sql);
                ps.setString(1, nameAuthor);
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
                    System.out.println("Cuoi");
                }
            } catch (Exception ex) {
                Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            String sql = " Select * from Book\n";
            list = getAll();
        }
        return list;
    }

    public static void main(String[] args) throws ParseException {
        BookDAO bd = new BookDAO();

    }

}
