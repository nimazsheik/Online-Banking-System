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
        
        <!---including the header--->
        <jsp:include page="header.jsp"/>
        
        
        <title>Login Page</title>
    </head>
    
    <body>
        
        <div class="container">
            <form class="form-signin"  action ="CheckServlet" method ="POST">
                <h2 class="form-signin-header">Please sign in</h2>
                <label for="inputUser" class="sr-only">Username</label>
                <input type="text" id="inputUser" name="acc_name" class="form-control" placeholder="Username" required autofocus>
                
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" name="acc_pass" class="form-control" placeholder="Password" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me">Remember Me
                    </label>
                </div>
                <button class="btn btn-md btn-primary btn-success" type="submit"/>Sign in</button>
                <button class="btn btn-md btn-warning" type="reset"/>Cancel</button>
 
                
            </form>
            
            <br/>
             <jsp:include page="footer.jsp"/>
            
        </div><!---end container--->
        
    </body>
</html>
