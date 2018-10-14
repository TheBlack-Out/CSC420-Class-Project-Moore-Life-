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
        <h1>Create an Account!</h1>
    </center>
    <form name = "NewServlet" action = "NewServlet" method = "POST">
        Username: <input type = "text" name = "first_name">
        <br />
        Password: <input type = "text" name = "last_name">
        <br />
        <input type = "submit" value = "Finish Registration" />
    </form>



</body>
</html>