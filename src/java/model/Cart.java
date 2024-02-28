/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ASUS
 */

import dao.BookDAO;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class Cart implements Serializable{
       Map<Book, Integer> items;

    public Cart() {
    }

    public Map<Book, Integer> getItems() {
        return items;
    }
     public void setItems(Map<Book, Integer> items) {
        this.items = items;
    }
     
     

    
}
