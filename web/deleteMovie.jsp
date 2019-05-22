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
    String id = request.getParameter("d_id");
    dbManager manager = (dbManager)session.getAttribute("manager");
    
%>

<body>
     <div class="topnav">
        <a href="login.jsp">Log Out</a>
        <a>My Account</a>
        <a>My Cart</a>
        <a href="customerHome.jsp">Find Movies</a>
        <a href="staffHome.jsp">Staff Functions</a>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
        <a href="index.jsp"><b>The Archive</b></a>
    </div>
    <div>
        <%
            //System.out.println(id);
            manager.deleteMovie(id);
        %>
        <p>Movie Deleted :(</p>
        <a href="staffHome.jsp">Back to Add another movie</a>
        
    </div>
    
    
    
</body>
</html>