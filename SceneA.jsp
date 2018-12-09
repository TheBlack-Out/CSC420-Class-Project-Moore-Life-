<%-- 
    Document   : Genesis
    Created on : Nov 14, 2018, 12:03:51 PM
    Author     : tyral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cruzan Apocolypse | Genesis</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
        <style>
            html { background-image: url("Candle.jpg");
                   background-repeat: no-repeat;
                   background-size: 70%;
            }
            p{
                border: 2px solid white;
                font-size: large;
                color: white;
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
         <!-- Added more style tags for CSS design -->
                <!-- Updated look and appearance of page buttons -->
        
    </head>
    <body>
        <div>
            <p>
              Kajeede: Yaaawnnn ... I've been itching for a stretch.
              <br><br>
              Lorenzo: Well, lets sweep out all this water then we can venture outside.
              <br><br>
              Lakeesha: Nah fam... I wanna peep now.
              <br><br>
              User: Yeah man leh we go!
              <br><br>  
              Kajeede: _opens cellar doors. As light trickles in, the view is of a foreign land.
                       <br> There was nothing but one strongly rooted mahogany tree standing. 
                       <br>Anything that resembled a neighborhood was simply... gone. 
                       <br>It was as though all the concrete and steel evaporated.
                       <br> <br>
              Lakeesha: What on God's earth happened out here?!?<br> <br>
              -A few hours later-
              RADIO: zzZzzZzZz...Much worst...zZZzz...Stay indoors..break out...<br> <br>
              Lorenzo: Guy's ... This sounds really serious... 
                       <br>They're saying that there are rising cases of some disease at the hospitals and clinics. 
              <br> <br> 
              User: Might be from all the foreign gusts that assaulted us.
              <br> <br>
              Lakeesha: crap crap crap I should have stayed with my parents! The phones aren't working <br> and I need to know that they're okay.
              <br> <br>
              User:We'll be fine. They said to stay indoors so we will just do that until the curfew lifts. 
              <br> <br>
              Kajeede: indoors where? I can't stand this cramp up space any longer.
                        <br> we should go to the Complex to seek shelter and food you.
              <br> <br> 
              Lorenzo: If you think complex still up, you crazy.
              <br> <br>  
              Kajeede: Let's go people. we will seek refuge at the complex.
              <br> <br>
              Lakeesha: No... Let's scavenge around this neighborhood for canned goods!
            </p>
            <form action = "SceneAa.jsp" method ="POST" >
                <input type ="submit" id="proceed" name = "Comp" value ="Seek Refuge at Complex">
            </form>
            
            <br>
            <br>
            <form action = "SceneAb.jsp" method ="POST">
                <input type="submit" id="proceed"  name = "SFF" value ="Scavange for food nearby ">
            </form>
        </div>
        
        <br>
        <br>
        <form name="Save" action="SaveCredentials.jsp" method="POST">
        <center>
            <input type = "hidden" id="level key" name = "level key"  readonly>
            <input type = "submit" id=exit value = "Log out and Save" />
        </center>
    </form>
    </body>
</html>

<script>
    document.forms['Save'].elements['level key'].value = '3';
</script>

<%
    session.setAttribute("levelkey", 3);
%>
