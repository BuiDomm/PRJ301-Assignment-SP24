/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author ASUS
 */
public class Book {
   private int idBook; 
    private String name;
    private String author;
    private Category category;
    private Publisher publisher;
    private int yearDate;
    private String img;
    private int count;
 
    public Book() {
    }

    public Book(int idBook, String name, String author, Category category, Publisher publisher, int yearDate, String img,int count) {
        this.idBook = idBook;
        this.name = name;
        this.author = author;
        this.category = category;
        this.publisher = publisher;
        this.yearDate = yearDate;
        this.img = img;
        this.count = count;
    }

    public Book(String name, String author, Category category, Publisher publisher, int yearDate, String img, int count) {
        this.name = name;
        this.author = author;
        this.category = category;
        this.publisher = publisher;
        this.yearDate = yearDate;
        this.img = img;
        this.count = count;
    }

    public int getIdBook() {
        return idBook;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public int getYearDate() {
        return yearDate;
    }

    public void setYearDate(int yearDate) {
        this.yearDate = yearDate;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Book{" + "idBook=" + idBook + ", name=" + name + ", author=" + author + ", category=" + category + ", publisher=" + publisher + ", yearDate=" + yearDate + ", img=" + img + ", count=" + count + '}';
    }

    
    
    
}
