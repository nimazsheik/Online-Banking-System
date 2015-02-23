/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Date;

/**
 *
 * @author Nimaz
 */
public abstract class BankAccount {
    String accountNumber;
    Date accountOpenDate;
    double accountBalance;
    
    //method depositAmount, withdrawAmount, accbalance
    public void deposit(double amount){
        accountBalance = accountBalance + amount;
    }
    
    public void withdraw(double amount){
        accountBalance = accountBalance - amount;
    }
    
    public double getBalance(){
        return accountBalance;
    }
    
    public void transfer(double amount, String accountNumberTo){
        
    }
}
