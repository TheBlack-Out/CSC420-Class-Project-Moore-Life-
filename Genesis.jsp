<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Cruzan Apocolypse | Genesis</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- insert <style> </style> -->
        
        <style>
            #proceed{
                width: 12em;  height: 2em;
                font-size: 15px;
            }
        </style>

        <style>
            #exit{
                width: 9em;  height: 1.5em;
                font-size: 14px;
            }
        </style>
        
        <style>
            html { background-image: url("file:///C:/Users/tyral/Pictures/absract.PNG");
                   background-repeat: no-repeat;
                   background-size: 1300px 700px;
            }
            p{
                border: 2px solid maroon;
                font-size: large;
                color: maroon;
            }
        </style>
    </head>
    <body>
        <div style="position: relative">

            <!-- hurricane noises-->
            <!--Bolden Names:--> 
            <p >
                Kajeede : Whooaa ... what in the world is going on out deh?!? <!--Light flashes-->
                <br><br>
                Lorenzo : The people dem on the radio did say to expect abnormal weather from this hurricane ...<!--Print Lines in intervals-->
                <br><br>
                Lakeesha: Well my piece, i shoulda stayed with my mother dem...<!-- Next scene-->
                <br><br>       
                <!--user name-->: Nuuh man we'll be fine. The eye supposidly passed us already.
                <br><br>       
                : Now we just have to wait for the outer bands to migrate more west.
                <br><br>
                4 hours later ...
                <br/>
                <br/>
                <button onclick="myFunction()">Next</button>
                <br/>
                <br/>
                
            </p>
            
            <p id="demo">
                
                
            <br/>

            <br/>
            <br/>
            <br/>   
            <form action = "SceneA.jsp" method = "post" >
                <input type ="submit" id="proceed" value ="Continue"/>
            </form>
            <br>
            <form action = "SaveCredentials.jsp"> 
                <input type = "hidden" id="level key" name = "level key"  readonly>
                <input type ="submit" id="exit" value ="Save and Exit"/> <!-- function to save progress and go to home pg-->
            </form> 

        </div>
    </body>
</html>






<script>
    function myFunction() {
        document.getElementById("demo").innerHTML = "Wake up people! The storm moved passed us. document.write("<br> <br>");  "User    : Finally, my foot dem was cramping up after being down here for so long." document.write("<br> <br>");   "Lorenzo : There is most likely some violent winds still outside so beware as you venture out.";
    }
</script>

<script>
    document.forms['Save'].elements['level key'].value = '2';
</script>

<%
    session.setAttribute("levelkey", 2);
%>