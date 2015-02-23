<%-- 
    Document   : header
    Created on : Feb 10, 2015, 8:29:49 PM
    Author     : Nimaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!---adding bootstrap files--->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href= "css/bootstrap.min.css" rel ="stylesheet">
          
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href ="css/style_home.css" type="text/css" rel="stylesheet"/>
        
        
        
        <script src = "js/respond.js"></script>
        
    </head>
    
    
    <body>
        <!---javascript--->
        
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
       
        <script src = "js/bootstrap.min.js"></script>
     
        <div class ="row">
            <div class ="navbar navbar-default navbar-inverse" role="navigation">
                    <div class="col-md-6 col-xs-6">
                        <img src="" height="170px" width="170px">
                    </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>  
                </div>
                
            <div class="collapse navbar-collapse" id="collapse">
                    <ul class="nav navbar-nav pull-right" style = "margin-top: 100px;">
                        <li><a href="#" >Accounts</a></li>
                        <li><a href="#">Payments</a></li>
                        <li><a href="#">Transfers</a></li>
                        <li><a href="#">Profile</a></li>
                        <li><a href="Logout">Logout</a></li>    <!---open logout servlet--->        
                    </ul>
                

                </div><!--- close collapse--->
            </div><!---close navbar--->
            
        </div><!---close row--->
        
        
        
       
    </body>
</html>
