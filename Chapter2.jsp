<%-- 
    Document   : Chapter 2
    Created on : Nov 12, 2018, 8:29:56 PM
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
        <h1>This is the second story page.</h1>
    </center>
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

    <form name="Page3" action="Chapter3.jsp" method="POST">
        <center> 
            <input type = "submit" value = "Proceed" />
        </center>
    </form>

    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>

    <form name="Save" action="SaveCredentials.jsp" method="POST">
        <center>
            <input type = "hidden" id="level key" name = "level key"  readonly>
            <input type = "submit" value = "Log out and Save" />
        </center>
    </form>

</body>
</html>


<script>
    document.forms['Save'].elements['level key'].value = '2';
</script>

<%
    session.setAttribute("levelkey", 2);
%>