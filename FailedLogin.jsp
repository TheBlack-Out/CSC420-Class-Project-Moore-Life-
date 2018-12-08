<%-- 
    Document   : FailedLogin
    Created on : Nov 5, 2018, 8:46:33 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
.<%String msg = (String) request.getAttribute("MESSAGE4");%>
.<%String msg2 = (String) request.getAttribute("MESSAGE5");%>
.<%String msg3 = (String) request.getAttribute("MESSAGE6");%>
<!DOCTYPE html>
<style>
    body, html {
        height: 100%;
    }

    body { 
        /* The image used */
        
        background-image: url(man-facepalming-type-5_1f926-1f3fe-200d-2642-fe0f.png), url(woman-facepalming-type-5_1f926-1f3fe-200d-2640-fe0f.png) ;


        /* Full height */
        height: 100%; 

        /* Center and scale the image nicely */
        
        background-position:  1400px 240px, 200px 240px;
        background-repeat: no-repeat; 
        background-size: 20%;
        
        
        
             
        
    }
</style>

<style>
    #home{
        width: 9em;  height: 2em;
        font-size: 20px;
    }
</style>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Failed</title>
    </head>
    <body>
    <center>
        <h1> <%=msg%> &#x1F615 <%=msg3%>  <%=msg2%> </h1>
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
<br/>
<br/>
<br/>
<br/>
<br/>   

<center>
        <input type="button" id="home"  onclick="location.href = 'index.jsp';" value="Home Page" /></p>
</center>