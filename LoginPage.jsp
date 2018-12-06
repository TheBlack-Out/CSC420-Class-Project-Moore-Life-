<%-- 
    Document   : LoginPage
    Created on : Oct 28, 2018, 3:28:01 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
    body {
        background-color: #58c9cf;
    }
</style>

<style>
                body {
                    font-family: Optima;
                </style>


<style>
                h1 {
                    font-size: 32px;
                    font-weight: bold;
                </style>

<style>
                    #username{
                        width: 12em;  height: 1.5em;
                        font-size: 15px;
                    }
                </style>

                <style>
                    #password{
                        width: 12em;  height: 1.5em;
                        font-size: 15px;
                    }
                </style>

                <style>
                    #login{
                        width: 9em;  height: 2em;
                        font-size: 18px;
                    }
                </style>
                
                
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1> Please enter your Username and Password</h1>
    </center>
    <form name = "LoginArea" action = "LoginArea" method = "POST">
        <br />
        <br />
        <br />
        <p style="text-indent: 20em  "> <font size="+2">    Username: </font> </p> 
        <p style="text-indent: 20em" > <input  type = "text" size="+1" id="username" name = "username"> </p> 
        <p style="text-indent: 20em  "> <font size="+2">   Password:  </font> </p>
        <p style="text-indent: 20em" > <input  type = "password" size="+1" id="password" name = "password"> </p> 
        <br/>
        <br/>
        <br/>
        <br/>
        <center> <input type = "submit" id="login" value = "Login" /> </center>

    </form>

</body>
</html>

