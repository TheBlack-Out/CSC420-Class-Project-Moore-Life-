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
        <br />
        <p style="text-indent: 20em  ">Username: </p> 
        <p style="text-indent: 20em" > <input type = "text" name = "username"> </p> 
        <p style="text-indent: 20em  ">Password: </p>
        <p style="text-indent: 20em" > <input type = "password" name = "password"> </p> 
        <br />
        <center> <input type = "submit" value = "Login" /> </center>

    </form>

</body>
</html>
