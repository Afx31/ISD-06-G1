<%-- 
    Document   : customerHome
    Created on : 15/05/2019, 11:16:19 AM
    Author     : jbrien
--%>

<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" import="java.util.*" import="model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>The Archive | Updating Movie</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/main.css">
</head>

<%
    String id = request.getParameter("u_id");
    dbManager manager = (dbManager)session.getAttribute("manager");
    //System.out.println(id);
    //Movie m = manager.findMovieID(id);
    //System.out.println(m.getID());
%>

<body>
    <div class="topnav">
        <a href="login.jsp">Log Out</a>
        <a>My Account</a>
        <a>My Cart</a>
        <a>Find Movies</a>
        <a><b>The Archive</b></a>
    </div>
    <div>
        <%
        try {
            Movie m = manager.findMovieID(id);    
        %>
        <h1>Updating <%=m.getTitle()%></h1>
        <form action="confirmUpdate.jsp" method="post">
            <input type="text" name="id" placeholder="Movie ID" value="<%=m.getID()%>">
            <input type="text" name="title" placeholder="Title" value="<%=m.getTitle()%>">
            <input type="text" name="genre" placeholder="Genre" value="<%=m.getGenre()%>">
            <input type="text" name="director" placeholder="Director" value="<%=m.getDirector()%>">
            <input type="text" name="price" placeholder="Price e.g: 19.99" value="<%=m.getPrice()%>">
            <input type="text" name="stock" placeholder="Stock e.g: 20" value="<%=m.getStock()%>">
            <input type="text" name="published" placeholder="24/02/2012" value="<%=m.getPublished()%>">
            <button type="submit">Update Movie</button>
        </form> 
        <a href="staffHome.jsp">Back to manage more movies</a>
        <%} catch (Exception e) {%>
        <p>Movie could not be found </p>
        <%}%>
        
    </div>
    
</body>
</html>