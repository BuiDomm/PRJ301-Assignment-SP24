/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.swing.text.DateFormatter;

/**
 *
 * @author ASUS
 */
public class Checkout {

    private int idCheckout;
    private String startTime;
    private List<Item> list;
    private Customer account;
    private boolean isReturn;

    public Checkout() {
    }

    public Checkout(int idCheckout, String startTime, List<Item> list, Customer account, boolean isReturn) {
        this.idCheckout = idCheckout;
        this.startTime = startTime;
        this.list = list;
        this.account = account;
        this.isReturn = isReturn;
    }

    public Checkout(String startTime, List<Item> list, Customer account, boolean isReturn) {
        this.startTime = startTime;
        this.list = list;
        this.account = account;
        this.isReturn = isReturn;
    }

    public int getIdCheckout() {
        return idCheckout;
    }

    public void setIdCheckout(int idCheckout) {
        this.idCheckout = idCheckout;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }



    public List<Item> getList() {
        return list;
    }

    public void setList(List<Item> list) {
        this.list = list;
    }

    public Customer getAccount() {
        return account;
    }

    @Override
    public String toString() {
        return "Checkout{" + "idCheckout=" + idCheckout + ", startTime=" + startTime + ", list=" + list + ", account=" + account + ", isReturn=" + isReturn + '}';
    }

    public void setAccount(Customer account) {
        this.account = account;
    }

    public boolean isIsReturn() {
        return isReturn;
    }

    public void setIsReturn(boolean isReturn) {
        this.isReturn = isReturn;
    }

 
}
