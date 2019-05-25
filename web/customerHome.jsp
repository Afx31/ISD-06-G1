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
        <!--<a href="login.jsp">Log Out</a>-->
        <a href="myAccount.jsp">My Account</a>
        <a href="cart.jsp">My Cart</a>
        <a>Find Movies</a>
        <a><b>The Archive</b></a>
    </div>
    <div>
        <h1> Lets find some movies</h1>
        <h2 style="text-align: left"> Here are some titles:</h2>
        <form action="searchMovie.jsp" method="post">
            <table>
                <tr>
                    <td><input style="width:750px" type="text" name="search" placeholder="Search Title... Leave blank for all movies"></td>
                    <td><button style="margin-top:0px" type="submit">Search</button></td>
                </tr>
            </table>
        </form>
         
        
        <table>
            <tr>
                <td><img src="media/wintersoldier.jpg" alt="Captain America: Winter Soldier" width="100" height="auto"></td>
                <td><a href="" style="font-size: 24px" style="text-decoration: none"><h4 style="text-align: center">Captain America: The Winter Soldier</h4></a></td>
                <td>
                    <i style="text-align: right">As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.</i>
                    <i style="float:right">- IMDB</i>
                </td>
            </tr>
         </table>
    </div>
    
    
    
</body>
</html>
