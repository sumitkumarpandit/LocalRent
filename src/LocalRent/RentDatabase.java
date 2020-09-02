/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LocalRent;
import java.sql.*;
import javax.swing.JOptionPane;
;


/**
 *
 * @author Naim
 */
public class RentDatabase {
  

    /**
     *
     * @return
     */
    public static Connection connectDb(){
          Connection conn ;
  try{
     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rentdb","root", "");
     return conn;
  } catch(SQLException e){
      JOptionPane.showMessageDialog(null,e);
      return null;
  }    
}
    
}
