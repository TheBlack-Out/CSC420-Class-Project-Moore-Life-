<%-- 
    Document   : index
    Created on : Nov 12, 2018, 8:08:33 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
.<%String savemsg = (String) request.getAttribute("MESSAGE3");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Moore Life</title>
    </head>
    <body>
    <center>
        <h1 style = "font-size:40px; font-family:Comic Sans MS">Hey there MooreLifer</h1>
        <h2>What would you like to do? 'Beep Boop'</h2>
    </center>

    <form name="RegistrationPage" action="RegistrationPage.jsp" method="POST">
        <center>
            <input type = "submit" value = "Proceed to Registration" />
        </center>
    </form>

    <center>
        <h4>Already have an account?</h4>
    </center>

    <form name="Login" action="LoginPage.jsp" method="POST">
        <center>
            <input type = "submit" value = "Proceed to Login" />
        </center>
    </form>

    <br />

    <center>

        <h5>(Text below will remain null until save data is created)
            <br/>
            "<%= savemsg%>"</h5>    
    </center>

    <br />

</body>
</html>
