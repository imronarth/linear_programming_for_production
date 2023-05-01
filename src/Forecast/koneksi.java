/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Forecast;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Aldo
 */
public class koneksi {
    
    public static Connection konek() {
            Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/tpk","root","");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, "Koneksi Gagal"+e.getMessage());
        }return con;
    }
    
}
