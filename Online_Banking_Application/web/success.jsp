<%-- 
    Document   : success
    Created on : Feb 11, 2015, 7:17:42 AM
    Author     : Nimaz
--%>

<%@page import="java.util.Date"%>
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
            
            
        <div class="container">
            
            
            <div class="row">
                <div id="sumPanel">
                    <div class="col-md-2">
                    <!---after session is started go in here--->
                        <% Customer currentCustomer = (Customer) (session.getAttribute("currentSessionUser"));%>
                        Good <%= greeting %> !!! <br/>
                         <%= currentCustomer.getFirstName()+ " "+ currentCustomer.getLastName() %>
                    </div>



                    <div class="col-md-2" style="border-left:medium grey solid; position:relative; left:10px; height:40px;">
                        Your account balance is :
                        1000
                    </div>

                    <div class="col-md-2" style="border-left:medium grey solid; position:relative; left:10px; height:40px;">
                        Local Time : <script type="text/javascript">
                                        var localTime = new Date();
                                        document.write(localTime);

                                    </script>
                    </div>
                
                </div><!---end sumPanel--->
            </div><!---end row--->
            
            <article class="row">
                <div class="panel panel-default" style="width:80%; border: 1px red solid;">
                    <div class="panel-heading" align="center" ><h1>Welcome to your account</h1></div>
                    <div class="panel-body">
                        <a href="" class="panelDesign">Withdraw</a>
                        <a href="" class="panelDesign">Transaction History</a>
                        <a href="" class="panelDesign">Payment History</a>
                    </div>  
                </div>
            </article>
            
            
        </div>
        <%}%>
       
    </body>
</html>
