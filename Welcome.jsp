<%-- 
    Document   : Welcome
    Created on : Oct 28, 2018, 9:04:38 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
.<%String msg = (String)request.getAttribute("MESSAGE"); %>



<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1> <%= msg%> &#x1F603 </h1>
        <br />
        </center>
        
        <form name="Start Game" action="StartGame.html" method="POST">
        <br />
        <center>
            <input type = "submit" value = "New Game" />
        </center>
    </form>

    <form name="Achievements Page" action="Achievements.html" method="POST">
        <br />
        <center>
            <input type = "submit" value = "View Achievements" />
        </center>
    </form>
    
    <form name="Welcome Back" action="Continue" method="POST">
        <br />
        <center>
            <input type = "submit" value = "Continue" />
        </center>
    </form>
    
    </body>
</html>
