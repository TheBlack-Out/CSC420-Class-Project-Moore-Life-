<%-- 
    Document   : SceneAa.jsp
    Created on : Nov 12, 2018, 8:29:56 PM
    Author     : MartyGott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cruzian Apocalypse | The Decision</title>
    <style>
         html { background-image: url("Winslow_Homer_-_Hurricane,_Bahamas.jpg");

                   background-repeat: no-repeat;

                   background-size: 70%;
             }
        </style>
        
        <style>
            #proceed{
                width: 12em;  height: 2em;
                font-size: 15px;
            }
        </style>

        <style>
            #exit{
                width: 12em;  height: 1.5em;
                font-size: 15px;
            }
        </style>
        
        <style>
            p{
                font-size: 18px;
                font-weight: 700;
                color: #ff0040;
                font-family: Helvetica;
            }
        </style>
        
         <!-- Added more style tags for CSS design -->
                <!-- Updated look and appearance of page buttons -->
    </head>
    <body>
    <center>
        <h1>The Decision</h1>
    </center>
    <p> Lakeesha : Fine. For the sake of safety I'll come along with you guys.<br/>
    Kajeede : This is the best decision at this point... I mean look at the state of the place.<br/>
    Lorenzo : Indeed. Just look at all the fog and debris. This couldn't have been ... It's completely abnormal!<br/>
    Kajeede : Let's just stay quiet and get past this exhausting trail.<br/>
    User : Yeah mehn. It's awfully quiet... This island is home to at least fifty thousand people, but i dont hear anyone or anything<br/>
    User : Besides the wind.<br/>
    Lorenzo : Everything is unrecognizable.. I think we're lost. We should split up then meet back here before sunset..<br/>
    Lakeesha : Good idea. I'll go this way.<br/>
    User : I'll take this route. Stay safe guys!<br/>
    Bush: Crackle....Crackle......<br/>
    Lakeesha : Whaaat...was that?!<br/>
    Lorenzo : I guess we spoke too soon.<br/><br/>
    User
    A mute mob of 4 people emerge from the bushes...<br/><br/>
    User : Heyyyy! hey there.<br/>
    Stranger : urrrrgggurrrgllee....<br/>
    User : You good fam?!<br/>
    The mod surrounds you.. One of them violently grabs your arm and is foaming at the mouth. It is now obvious they mean harm.<br/>
    User: What's wrong with you people.... Stoopp or else....<br/>
    </p>
    <br/>
    <br/>

         <form name="SceneBa" action="Death.jsp" method="POST">
         <center> 
            <input type = "submit" id="proceed" value = "Fight them alone" />
         </center>
         </form>

    <br>
    <br>
        
        <form name="SceneBb" action="SceneBb.jsp" method="POST">
        <center> 
            <input type = "submit" id="proceed" value = "Call out for help!" />
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
            <input type = "submit" id="exit" value = "Log out and Save" />
        </center>
    </form>
   
</body>
</html>


<script>
    document.forms['Save'].elements['level key'].value = '4';
</script>

<%
    session.setAttribute("levelkey", 4);
%>
