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
    <title>The Archive | Delete Movie</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/main.css">
</head>

<%
    String id = request.getParameter("u_id");
    dbManager manager = (dbManager)session.getAttribute("manager");
    
    ResultSet rs  = manager.findMovie(Integer.parseInt(id));
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
        
        <h1>Updating </h1>
        <form action="confirmUpdate.jsp" method="post">
            <input type="text" name="id" placeholder="Movie ID" value="<%=rs.getString(1)%>">
            <input type="text" name="title" placeholder="Title" value="<%=rs.getString(6)%>">
            <input type="text" name="genre" placeholder="Genre" value="<%=rs.getString(2)%>">
            <input type="text" name="director" placeholder="Director" value="<%=rs.getString(3)%>">
            <input type="text" name="price" placeholder="Price e.g: 19.99" value="<%=rs.getString(4)%>">
            <input type="text" name="stock" placeholder="Stock e.g: 20" value="<%=rs.getString(5)%>">
            <input type="text" name="published" placeholder="24/02/2012" value="<%=rs.getString(7)%>">
            <button type="submit">Update Movie</button>
        </form> 
        <a href="staffHome.jsp">Back to manage more movies</a>
        
    </div>
    
    
    
</body>
</html>