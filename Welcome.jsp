<%-- 
    Document   : Welcome
    Created on : Oct 28, 2018, 9:04:38 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
.<%String msg = (String) request.getAttribute("MESSAGE");%>
.<%String msg2 = (String) request.getAttribute("MESSAGE2");%>
.<%String msg3 = (String) request.getAttribute("MESSAGE3");%>



<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Moore Life Main Menu!</title>
    </head>
    <body>
    <center>
        <h1> <%= msg%> </h1>
        <h2><%= msg2%> &#x1F603 </h2>

        <br />
    </center>

    <form name="Start Game" action="Abstract.jsp" method="POST">
        <br />
        <p style="text-indent: 16em  ">Username: </p> 
        <p style="text-indent: 16em" > <input type = "text" id="username" name = "username" readonly> </p>
        <center>
            <input type = "submit" value = "New Game" />
        </center>
    </form>

    <form name="Welcome Back" action="Continue" method="POST">
        <br/>
        <input type="hidden" id="otherusername" name = "otherusername">
        <center>
            <input type = "submit" value = "Continue" />
        </center>   
    </form>




    <form name="Achievements Page" action="Achievements.jsp" method="POST">
        <br />
        <center>
            <input type = "submit" value = "View Achievements" />
        </center>
    </form>



</body>
</html>

<script>
    document.forms['Start Game'].elements['username'].value = "<%= msg3%>";
</script>

<script>
    document.forms['Welcome Back'].elements['otherusername'].value = "<%= msg3%>";
</script>

<script>
    function demoDisplay() {
    document.getElementById("otherusername").style.display = "none";
}
</script>


