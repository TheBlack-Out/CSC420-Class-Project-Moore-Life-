<%-- 
    Document   : RegistrationPage2
    Created on : Oct 13, 2018, 3:25:01 PM
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
        <h1>Create an Account (cont)!</h1>
    </center>
    <form name = "CompleteRegistration" action = "UserRegistered" method = "POST">
        Username: <input type = "text" name = "username">
        <br />
        Password: <input type = "password" name = "password">
        <br />
        User Key: <input type ="number" name="user_key" pattern="^(?=.*[/d]){4}$">
        <br />
        <input type = "submit" value = "Finish Registration" />
    </form>



</body>
</html>