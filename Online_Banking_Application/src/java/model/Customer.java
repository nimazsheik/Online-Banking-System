/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;import dao.DatabaseConnection;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nimaz
 */
public class Customer {
    
    private int userID;
    private String firstName;
    private String lastName;
    private Date dateOfBirth;
    private String gender;
    private String email;
    private String userName;
    private String password;
    private boolean valid;
    
   // Connection con = null;

   
    public int getUserID() {
        return userID;
    }
    public void setUserID(int userID) {
        this.userID = userID;
    }
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }

public static Customer checkUserLogin(Customer user){
        
            PreparedStatement stmnt= null;
            ResultSet rs = null;
           // User user = new User();
          try {    

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
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return user;
    }
   
    
}
