<%-- 
    Document   : SaveCredentials
    Created on : Nov 11, 2018, 8:12:34 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    body {
        background-color: #3980c6;
    }
</style>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Enter your Username </h1>
    </center>
    <form name = "SaveFeature" action = "SaveFeature" method = "POST">
        <br />
        <p style="text-indent: 20em  ">Username: </p> 
        <p style="text-indent: 20em" > <input type = "text" name = "username"> </p> 
        <p style="text-indent: 20em  ">Level Key: </p>
        <p style="text-indent: 20em" > <input type = "number" id="level key" name = "level key" value="<%=session.getAttribute("levelkey")%>"  readonly> </p> 
        <br />
        <center> <input type = "submit" value = "Save" /> </center>

    </form>
</body>
</html>
 