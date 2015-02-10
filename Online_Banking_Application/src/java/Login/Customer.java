/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Login;

import java.sql.Connection;
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
    
    
    //this method is to login to the website if its a valid user
    public int checkUserLogin(String uname, String pwd){
        
      
            Statement stmnt= null;
            ResultSet rs = null;
          try {    
            setUserName ( uname);
            setPassword ( pwd);
            
            String checkQuery = "SELECT * FROM users WHERE user_name = '"+getUserName()+"' AND password = '"+getPassword() +"'";
            // now check the database if user exists, if exists return his id number
            DatabaseConnection databaseConnect = new DatabaseConnection();
            
            
            stmnt = databaseConnect.getConnection().createStatement();
            rs = stmnt.executeQuery(checkQuery);
            boolean loggedIn = rs.next();
            if(loggedIn){
                setUserID(rs.getInt("user_ID"));
                
            }
            else{
                System.out.println("fail login, pls try again");
                setUserID(-1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return getUserID();
    }

   
    
}
