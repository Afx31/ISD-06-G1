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
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
        <a><b>The Archive</b></a>
    </div>
    <%--<jsp:include page="header.jsp"  flush="true"/>--%>
    
    <div class="centerboxhome">
        <h1> Sit back, relax and enjoy your shows!</h1>
        <h2 style="text-align: left"> Here are some of the latest titles:</h2>
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
                <td><img src="media/rhapsody.jpg" alt="Rhapsody" width="100" height="auto"></td>
                <td><a href="" style="font-size: 24px" style="text-decoration: none"><h4 style="text-align: center">Bohemian Rhapsody</h4></a></td>
                <td>
                    <i style="text-align: right">The story of the legendary rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).</i>
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
            <tr>
                <td><img src="media/footloose.jpg" alt="Footloose" width="100" height="auto"></td>
                <td><a href="" style="font-size: 24px" style="text-decoration: none"><h4 style="text-align: center">Footloose (1984)</h4></a></td>
                <td>
                    <i style="text-align: right">A city teenager moves to a small town where rock music and dancing have been banned, and his rebellious spirit shakes up the populace.</i>
                    <i style="float:right">- IMDB</i>
                </td>
            </tr>
        </table>
    </div>
    <jsp:include page="/ConnServlet" flush="true" />
</body>
</html>
