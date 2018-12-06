<%-- 
    Document   : RegistrationPage
    Created on : Oct 13, 2018, 3:09:21 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    body {
        background-color: #ffb366;
    }
</style>

<style>
    h1 {
        font-size: 30px;
        font-weight: bold;
    </style>

    <style>
        #next{
            width: 12em;  height: 1.5em;
            font-size: 15px;
        }
    </style>


    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Registration Page</title>
        </head>
        <body>
        <center>
            <h1>Create an Account!</h1>
        </center>




        <form name = "Account Registration" action = "UserRegistered" method = "POST">
            <br/>
            <br/>
            <br/>

            First Name: <input type = "text" name = "first_name">
            <br />
            Last Name: <input type = "text" name = "last_name">
            <br />
            E-mail: <input type="email" id="myemail" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$"> 
            <button type = "button" onclick="myFunction()">Check the required pattern</button>
            <br />
            Age: <input type = "number" id="myage" name = "age"  > 
            <button type = "button" onclick="myFunction2()"> Enter a number only </button>
            <br />
            Username: <input type = "text" name = "username">
            <br />
            Password: <input type = "password" name = "password">
            <br />
            User Key: <input type ="number" name="user_key" >
            <br />
            <br />
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br />
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <center>
                <input type = "submit" id="next" value = "Next Page" />
            </center>
        </form>




    </body>
</html>

<p id="demo"></p>

<script>
    function myFunction() {
        var x = document.getElementById("myemail").pattern;
        document.getElementById("demo").innerHTML = x;


    }
</script>


<p id="demo2"></p>

<script>
    function myFunction2() {
        var y = document.getElementById("myage").value;
        if (y < 0 || y > 130) {
            alert("Enter an age less than 130 ");
            
        }
        document.getElementById("demo2").innerHTML = y;
    }


</script>
