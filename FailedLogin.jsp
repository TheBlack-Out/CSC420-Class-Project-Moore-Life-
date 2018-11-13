<%-- 
    Document   : FailedLogin
    Created on : Nov 5, 2018, 8:46:33 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
.<%String msg = (String) request.getAttribute("MESSAGE");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Failed</title>
    </head>
    <body>
    <center>
        <h1> <%= msg%> &#x1F627 </h1>
        <br />
    </center>
</html>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<center>
<input type="button" onclick="location.href='index.jsp';" value="Home Page" />
</center>