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
<style>
    body {
        background-color: #fa3c58;
    }
</style>


<style>
    h1 {
        font-size: 36px;
        font-weight: bold;
    </style>

    <style>
        #newgame{
            width: 11em;  height: 2em;
            font-size: 15px;
        }
    </style>

    <style>
        #submit{
            width: 11em;  height: 2em;
            font-size: 15px;
        }
    </style>

    <style>
        #achievements{
            width: 12em;  height: 2em;
            font-size: 15px;
        }
    </style>

    <style>
        #username{
            width: 9em;  height: 1.5em;
            font-size: 14px;
        }
    </style>
    <!-- Added more style tags for CSS design -->
    <!-- Updated look and appearance of page buttons background -->

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Moore Life Main Menu!</title>
        </head>
        <body>
        <center>

            <font color="#323267">  <h1> <%= msg%> &#x1F603 </h1>
            </font>

            <br/>
        </center>

        <form name="Start Game" action="Abstract.jsp" method="POST">
            <br />

            <p style="text-indent: 16em" > <input type = "text" id="username" name = "username" readonly> </p>

                <br/>
                <br/>
                <br/>
                <center>
                    <input id="newgame" type = "submit" value = "New Game" />
                </center>
            </form>


            <br/>
            <form name="Welcome Back" action="Continue" method="POST">
                <br/>
                <input type="hidden" id="otherusername" name = "otherusername">
                <center>
                    <input id="submit"  type = "submit" value = "Continue" />
                </center>   
            </form>



            <br/>
            <form name="Achievements Page" action="Achievements.jsp" method="POST">
                <br />
                <center>
                    <input id="achievements" type = "submit" value = "View Achievements" />
                </center>
            </form>



        </body>
    </html>

    <script>
        document.forms['Start Game'].elements['username'].value = "<%= msg3%>'s session ";
    </script>

    <script>
        document.forms['Welcome Back'].elements['otherusername'].value = "<%= msg3%>";
    </script>

    <script>
        function demoDisplay() {
            document.getElementById("otherusername").style.display = "none";
        }
    </script>


