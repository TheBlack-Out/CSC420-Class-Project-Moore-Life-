<%-- 
    Document   : FailedLogin
    Created on : Nov 14, 2018, 9:47:10 PM
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


    <body style="background-image: url(Emoji-man-facepalming-type-5_.jpg)">
    <center>
        <h1><%= msg%> &#x1F627 </h1>
    </center>
</body>

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
    <input type="button" onclick="location.href = 'index.jsp';" value="Home Page" />
</center>
</html>

</html>
