/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hospital_management_system;
import java.sql.*;
import javax.swing.JOptionPane;

        
/**
 *
 * @author HP
 */
public class DatabaseConnection {
    public static Connection getConnection(){
        try{
            String url="";
            String password="";
            String username="";
            
            return
            DriverManager.getConnection(url,username,password);
        }catch(Exception e){
           JOptionPane.showMessageDialog(null,"Connection error"+ e.getMessage());
           return null;
        }
    }
    
}
