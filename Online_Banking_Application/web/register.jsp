<%-- 
    Document   : register
    Created on : Feb 15, 2015, 9:31:43 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <form action="processdata.jsp">
            <center>
                <h1>Welcome to Our Bank...!!  Please fill the Customer Registration Form</h1>
                <table border="5" bgcolor="grey" style="color:blue">
                    <tr>
                        <td>
                            <b>User Name:</b>
                        </td>
                        <td>
                            <input type="text" name="uname">
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <b>User ID:</b>
                        </td>
                        <td>
                            <input type="text" name="uID">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Email-ID:</b>
                        </td>
                        <td>
                            <input type="email" name="uemail"
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Create Password:</b>
                        </td>
                        <td>
                            <input type="password" name="upass">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Confirm Password:</b>
                        </td>
                        <td>
                            <input type="password" name="upass">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>D.O.B</b>
                        </td>
                        <td>
                            <input type="text" name="udob">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Gender:</b>                       
                        </td>
                        <td>
 
                        </td></tr>
                    <tr>  
                        <td>
                            <input type="radio" name="ugender" value="Male">Male
                        </td>
                        <td>
                            <input type="radio" name="ugender" value="Female">Female
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Phone No:</b>
                        </td>
                        <td>
                            <input type="text" name="uphone">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Country:</b>
                        </td>
                        <td>
                            <input type="text" name="uloc">
                        </td>
                    </tr>   
                    <tr>
                        <td>
                            <input type="submit" value="SignUp">
                        </td>
                        <td>
                            <input type="reset" value="Reset">
                        </td>
                    </tr>
                </table>
        </form>
       
    </body>
</html>