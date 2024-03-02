/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;

/**
 *
 * @author ASUS
 */
public class Item implements Serializable{
    private int idItem; 
    private Book book;
    private int quantity;

    public Item(int idItem, Book book, int quantity) {
        this.idItem = idItem;
        this.book = book;
        this.quantity = quantity;
    }

    public Item(Book book, int quantity) {
        this.book = book;
        this.quantity = quantity;
    }

    public Item() {
    }

    public int getIdItem() {
        return idItem;
    }

    public void setIdItem(int idItem) {
        this.idItem = idItem;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
  
    
}
