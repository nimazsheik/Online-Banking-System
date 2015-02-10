/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Nimaz
 */
public class DatabaseConnection {
    private static DatabaseConnection dbCon;
    private Connection connect ;

    public DatabaseConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank_db", "root","");
        } catch (ClassNotFoundException ex) {
             JOptionPane.showMessageDialog(null, "Connection Error: Try to connect again "+ex);
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
             JOptionPane.showMessageDialog(null, "Connection Error : Check Database "+ex);
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public Connection getConnection(){
        return connect;
    }
    
}
