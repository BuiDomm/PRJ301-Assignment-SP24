/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import model.Book;
import model.Cart;

/**
 *
 * @author ASUS
 */
public class CartDAO extends DBContext implements Serializable {

    Cart c = new Cart();
    
    Map<Book, Integer> items = c.getItems();

    public void addToCart(int id) {

        BookDAO bd = new BookDAO();
        Book k = bd.findById(id);
        if (this.items == null) {
            this.items = new HashMap<Book, Integer>();
        }
        int quantity = 1;
        if (items.containsKey(k)) {
            quantity = items.get(k) + 1;
        }
        this.items.put(k, quantity);

    }

    public void removeCart(int id) {
        BookDAO bd = new BookDAO();

        Book b = bd.findById(id);
        if (items.containsKey(b)) {
            items.remove(b);
        }
        if (items.size() == 0) {
            items = null;
        }
    }

    public String serialize() throws IOException {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream out = new ObjectOutputStream(bos);
        out.writeObject(this);
        out.flush();
        return Base64.getEncoder().encodeToString(bos.toByteArray());
    }

    public static Cart deserialize(String cartString) throws IOException, ClassNotFoundException {
        byte[] data = Base64.getDecoder().decode(cartString);
        ObjectInputStream in = new ObjectInputStream(new ByteArrayInputStream(data));
        return (Cart) in.readObject();
    }

    @Override
    public String toString() {
        return "Cart{" + "items=" + items + '}';
    }

}
