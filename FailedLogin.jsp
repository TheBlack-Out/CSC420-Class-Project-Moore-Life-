<%-- 
    Document   : FailedLogin
    Created on : Nov 5, 2018, 8:46:33 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
.<%String msg = (String) request.getAttribute("MESSAGE");%>
.<%String msg4 = (String) request.getAttribute("MESSAGE2");%>
.<%String msg5 = (String) request.getAttribute("MESSAGE3");%>
<!DOCTYPE html>
<style>
    body, html {
        height: 100%;
    }

    body { 
        /* The image used */
        background-image: url(man-facepalming-type-5_1f926-1f3fe-200d-2642-fe0f.png);


        /* Full height */
        height: 100%; 

        /* Center and scale the image nicely */
        background-position: center;
        background-repeat: no-repeat;
        background-size: 400px 400px
    }
</style>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Failed</title>
    </head>
    <body>
    <center>
        <h1> <%=msg%> &#x1F615 <%=msg4%> <%=msg5%> </h1>
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
    <p style="padding-left : 720px ">
        <input type="button" onclick="location.href = 'index.jsp';" value="Home Page" /></p>
</center>