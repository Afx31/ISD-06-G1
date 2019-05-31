<%-- 
    Document   : customerHome
    Created on : 15/05/2019, 11:16:19 AM
    Author     : jbrien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>The Archive | Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/main.css">
</head>
<body>
    <div class="topnav">
        <jsp:include page="header.jsp" flush="true" />
    </div>
    <div class="centerboxhome">
        <h1> Lets find some movies</h1>
        <form action="searchMovie.jsp" method="post">
            <table>
                <tr>
                    <td><input style="width: 100%" type="text" name="search" placeholder="Search Title, Genre or Director... Leave blank for all movies"></td>
                    <td><button style="margin-top:0px" type="submit">Search</button></td>
                </tr>
            </table>
        </form>
        <h2 style="text-align: left"> What's Hot This Week!</h2> 
        <table>
            <tr>
                <td><img src="media/wintersoldier.jpg" alt="Captain America: Winter Soldier" width="100" height="auto"></td>
                <td><a href="" style="font-size: 24px" style="text-decoration: none"><h4 style="text-align: center">Captain America: The Winter Soldier</h4></a></td>
                <td>
                    <i style="text-align: right">As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.</i>
                    <i style="float:right">- IMDB</i>
                </td>
            </tr>
            <tr>
                <td><img src="media/shawshank.jpg" alt="Shawshank" width="100" height="auto"></td>
                <td><a href="" style="font-size: 24px" style="text-decoration: none"><h4 style="text-align: center">The Shawshank Redemption</h4></a></td>
                <td>
                    <i style="text-align: right">Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.</i>
                    <i style="float:right">- IMDB</i>
                </td>
            </tr>
            <tr>
                <td><img src="media/needforspeed.jpg" alt="Need for Speed" width="100" height="auto"></td>
                <td><a href="" style="font-size: 24px" style="text-decoration: none"><h4 style="text-align: center">Need for Speed</h4></a></td>
                <td>
                    <i style="text-align: right">Fresh from prison, a street racer who was framed by a wealthy business associate joins a cross country race with revenge in mind. His ex-partner, learning of the plan, places a massive bounty on his head as the race begins.</i>
                    <i style="float:right">- IMDB</i>
                </td>
            </tr>
         </table>
    </div>
    
    
    
</body>
</html>
