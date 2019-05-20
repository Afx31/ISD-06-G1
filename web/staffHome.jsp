<%-- 
    Document   : customerHome
    Created on : 15/05/2019, 11:16:19 AM
    Author     : jbrien
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
        <a href="login.jsp">Log Out</a>
        <a>My Account</a>
        <a>My Cart</a>
        <a>Find Movies</a>
        <a><b>The Archive</b></a>
    </div>
    <div>
        <h1> Lets add some movies</h1>
        <form action="addmovie.jsp" method="post">
          <input type="text" name="id" placeholder="Movie ID">
          <input type="text" name="title" placeholder="Title">
          <input type="text" name="genre" placeholder="Genre">
          <input type="text" name="director" placeholder="Director">
          <input type="text" name="price" placeholder="Price e.g: 19.99">
          <input type="text" name="stock" placeholder="Stock e.g: 20">
          <input type="text" name="published" placeholder="24/02/2012">
          <button type="submit">Add Movie</button>
        </form> 
    </div>
</body>
</html>
