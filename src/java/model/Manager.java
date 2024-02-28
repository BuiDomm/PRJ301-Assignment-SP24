/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ASUS
 */
public class Manager {
    private int idManager;
    private String username;
    private String password; 

    public Manager(int idManager, String username, String password) {
        this.idManager = idManager;
        this.username = username;
        this.password = password;
    }

    public Manager(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getIdManager() {
        return idManager;
    }

    public void setIdManager(int idManager) {
        this.idManager = idManager;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Manager{" + "idManager=" + idManager + ", username=" + username + ", password=" + password + '}';
    }
    
    
    
}
