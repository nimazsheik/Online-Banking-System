<%-- 
    Document   : success
    Created on : Feb 11, 2015, 7:17:42 AM
    Author     : Nimaz
--%>

<%@page import="java.util.Calendar"%>
<%@page import="model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <jsp:include page="header.jsp"/>
        
        <% 
            if(session.getAttribute("currentSessionUser")==null){
            response.sendRedirect("index.jsp");
        }
        else{
            
        
        %>
    </head>
    <body>
        <h1>Login is a success</h1>
        <p>
            <!---getting the time of day for greeting--->
            <%!Calendar c = Calendar.getInstance();
                int timeDay = c.get(Calendar.HOUR_OF_DAY);
                String greeting="";
            %>    
            <%
                if(timeDay>=0 && timeDay<12){
                    greeting = "Morning";
                }else if(timeDay>=12 && timeDay<16){
                    greeting = "Afternoon";
                }else if(timeDay>=16 && timeDay<21){
                    greeting="Evening";
                }else if(timeDay>=21 && timeDay<24){
                    greeting="Night";
                }else{
                    greeting="Day";
                }
            
            %>
            <div class="row">
                <div class="col-lg-2 col-lg-push-3"
                <!---after session is started go in here--->
                    <% Customer currentCustomer = (Customer) (session.getAttribute("currentSessionUser"));%>
                    <p>Good <%= greeting %> !!!</p>
                    <p>Welcome to your banking account <%= currentCustomer.getFirstName()+ " "+ currentCustomer.getLastName() %></p>
                </div>
                <div class="col-lg-2 col-lg-offset-3">
                    <h5>Your account balance is :</h5>
                    <h3 id="h3marg">1000</h3>
                </div>
                <div class="col-lg-2"
            </div>
        
        <%}%>
       
    </body>
</html>
