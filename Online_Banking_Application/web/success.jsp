<%-- 
    Document   : success
    Created on : Feb 11, 2015, 7:17:42 AM
    Author     : Nimaz
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login is a success</h1>
        <p>
            <!---after session is started go in here--->
            <% User currentUser = (User) (session.getAttribute("currentSessionUser"));%>
            Welcome to your banking account <%= currentUser.getFirstName()+ " "+ currentUser.getLastName() %>
        </p>
    </body>
</html>
