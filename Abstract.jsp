<%-- 
    Document   : Abstract
    Created on : Nov 14, 2018, 12:11:59 PM
    Author     : tyral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cruzan Apocolypse | Abstract</title>

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
            html { background-image: url("46495077_253110482028429_4454452535645700096_n.png");
                   background-repeat: no-repeat;
                   background-size: cover;
            }
            p{
                border: 2px solid maroon;
                font-size: large;
                color: maroon;
            }
            h4{
                font-size: large;
                color: maroon;
            }
        </style>
    </head>
    <body><center>
        <br><br><br><br><br><br><br><br>
        <p> <font size="+2">
            What would you do if you witnessed the fall of your nation? <br>
            Virgin Islanders, along with many of our fellow Caribbean islanders and mainlanders, recently 
            had a firsthand experience on what it means to lose it all. On St. Croix, Hurricane Maria had 
            no mercy on the people. Taking homes and hope with her brute force winds of 175 Mph. 
            Before that, the situation was worst on St. Thomas after the impact of Hurricane Irma. 
            Yet, the people stayed strong and focused on the work at hand. Personally, my family and 
            I didn’t discuss this trauma until our home was cleaned and matters were settled. This was a truly inspiring 
            testament of how resilient mankind can be. with the aid of our fellow Americans and the will of our people 
            to seek out normalcy, we as a community have managed to bounce back our infrastructure and economy to a better
            state than they were before the hurricanes made their visit.
            <br/>
            <br/>
            Inspired by the hardships, yet perseverance shown by the people, and a random idea from our Professor, CyberFy
            LLC brings to you The Cruzan Apocalypse! <br> An interactive story delivered via your web browser. 
            
            </font>
        </p>
        <br/>
        <br/>
        <br/>
        <form name="Genesis" action="Genesis.jsp" method="POST">
            <input type = "submit" id="proceed" value = "Proceed" />
        </form>

        <br/>
        <br/>
        <br/>

        <form name="exit" action="index.jsp" method="POST">
            <input type = "submit" id="exit" value = "Exit" />
        </form>
    </center></body>
</html>

<script>
    document.forms['Save'].elements['level key'].value = '1';
</script>

<%
    session.setAttribute("levelkey", 1);
%>