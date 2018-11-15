<%-- 
    Document   : FailedLogin
    Created on : Nov 5, 2018, 8:46:33 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
.<%String msg = (String) request.getAttribute("MESSAGE");%>

<!DOCTYPE html>
<style>
    body, html {
        height: 100%;
    }

    body { 
        /* The image used */
        background-image: url(Emoji-man-facepalming-type-5_.jpg);


        /* Full height */
        height: 100%; 

        /* Center and scale the image nicely */
        background-position: center;
        background-repeat: no-repeat;
        background-size: 600px 600px
    }
</style>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Failed</title>
    </head>
    <body>
    <center>
        <h1> <%if (msg != null) {
                out.println(msg);
            }%> &#x1F627 </h1>
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
<br/>
<br/>
<br/>

<center>
    <p style="padding-left : 735px ">
        <input type="button" onclick="location.href = 'index.jsp';" value="Home Page" /></p>
</center>