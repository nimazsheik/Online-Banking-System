/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import dao.DatabaseConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Nimaz
 */
public class UserController {
 
        public static User checkUserLogin(User user){
        
            PreparedStatement stmnt= null;
            ResultSet rs = null;
           // User user = new User();
          try {    
            //setUserName ( uname);
           // setPassword ( pwd);
            
         //   String checkQuery = "SELECT * FROM users WHERE user_name = '"+getUserName()+"' AND password = '"+getPassword() +"'";
            String checkQuery = "SELECT * FROM users WHERE user_name = ? AND password = ?";
            // now check the database if user exists, if exists return his id number
            DatabaseConnection databaseConnect = new DatabaseConnection();
            
            
            stmnt = databaseConnect.getConnection().prepareStatement(checkQuery);
            stmnt.setString(1, user.getUserName());
            stmnt.setString(2, user.getPassword());
            rs = stmnt.executeQuery();
            
            //boolean loggedIn = rs.next();
           
            if(rs.next()){
                user.setUserID(rs.getInt("user_id"));
                user.setFirstName(rs.getString("first_name"));
                user.setLastName(rs.getString("last_name"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setGender(rs.getString("gender"));
                user.setEmail(rs.getString("email"));
                user.setUserName(rs.getString("user_name"));
                user.setPassword(rs.getString("password"));
                user.setValid(true);
            }else{
                System.out.println("fail login");
                user.setValid(false);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return user;
    }
}
