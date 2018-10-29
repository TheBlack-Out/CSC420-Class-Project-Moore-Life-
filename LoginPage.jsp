<%-- 
    Document   : LoginPage
    Created on : Oct 28, 2018, 3:28:01 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Please enter your Username and Password</h1>
    </center>
    <form name = "LoginArea" action = "LoginArea" method = "POST">
        <p style="text-indent: 4em  ">Username: </p> 
        <p style="text-indent: 4em" > <input type = "text" name = "username"> </p> 
        <p style="text-indent: 4em  ">Password: </p>
        <p style="text-indent: 4em" > <input type = "password" name = "password"> </p> 
        <br />
        <input type = "submit" value = "Login" />
    </form>

</body>
</html>
