/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ASUS
 */
public class Publisher {
    private int idPublisher;
    private String name;

    public Publisher() {
    }

    public Publisher(int idPublisher, String name) {
        this.idPublisher = idPublisher;
        this.name = name;
    }

    public Publisher(String name) {
        this.name = name;
    }

    public int getIdPublisher() {
        return idPublisher;
    }

    public void setIdPublisher(int idPublisher) {
        this.idPublisher = idPublisher;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Publisher{" + "idPublisher=" + idPublisher + ", name=" + name + '}';
    }
    
    
}
