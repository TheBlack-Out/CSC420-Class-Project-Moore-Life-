<%-- 
    Document   : index
    Created on : Nov 12, 2018, 8:08:33 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
.<%String savemsg = (String) request.getAttribute("MESSAGE3");%>
<!DOCTYPE html>


<style>
    body {
        background-color: #819421;
    }
</style>

<style>
                div {
                    background-color: coral;
                    width: 210px;
                    border: 2px solid lightgray;
                    padding: 4px;
                    margin: 3px;
                    font-weight: 500;
                    font-size: 16px;
                    font-family: Palatino;
                    font-style: italic;
                }
            </style>

            <style>
                .topright {
                    position: absolute;
                    top: 8px;
                    right: 16px;
                    font-size: 18px;
                </style>


                <style>
                    #Login{
                        width: 12em;  height: 2em;
                        font-size: 15px;
                    }
                </style>

                <style>
                    #SaveData{
                        width: 12em;  height: 2em;
                        font-size: 15px;
                    }
                </style>

                <style>
                    #Register{
                        width: 12em;  height: 2em;
                        font-size: 15px;
                    }
                </style>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Moore Life</title>
    </head>
    <body>
    <center>
        <h1 style = "font-size:40px; font-family:Comic Sans MS">Hey there MooreLifer</h1>
            <div class="topright"> Authors: Lakeesha Laudat, Kajeede Fanus, Lorenzo LaPlace </div>
        <br/>
        <h2>What would you like to do? 'Beep Boop'</h2> 
    </center>

    <br/>
    <form name="RegistrationPage" action="RegistrationPage.jsp" method="POST">
        <br/>
        <center>
            <input type = "submit"  id="Register"  value = "Proceed to Registration" />
        </center>
    </form>
    <br/>
    <br/>

    <center>
        <h4> <font size="+2"> Already have an account?  </font> </h4>
    </center>
    <br/>

    <form name="Login" action="LoginPage.jsp" method="POST">
        <center>
            <input type = "submit" id="Login" value = "Proceed to Login" />
        </center>
    </form>

    <br />

    <center>

        <h5>
            <br/>
            <p id="demo"> </p> </h5>    
        <br/>
        <button id="Savedata" onclick="myFunction()">Check for save data</button>
    </center>

    <br />






    <script>
        function myFunction() {
            document.getElementById("demo").innerHTML = "<%= savemsg%>";
        }
    </script>


</body>
</html>
