<%-- 
    Document   : index
    Created on : Feb 9, 2015, 8:31:17 PM
    Author     : Nimaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <table border="0">
            <form action ="#" method ="POST">
            <tbody>
                <tr>
                    <td>Account</td>
                    <td><input type = "text" name="acc_name"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type ="password" name = "acc_pass"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                    <td><input type="reset" value="Cancel"/></td>
                </tr>
            </tbody>
            </form>
        </table>


    </body>
</html>
