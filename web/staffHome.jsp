<%-- 
    Document   : customerHome
    Created on : 15/05/2019, 11:16:19 AM
    Author     : jbrien
--%>
<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.sql.*"%>
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
        <a href="customerHome.jsp">Find Movies</a>
        <a href="staffHome.jsp">Staff Functions</a>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
        <a href="index.html"><b>The Archive</b></a>
    </div>
    <%
        dbManager manager = (dbManager)session.getAttribute("manager");
        ResultSet rs = manager.findMovie("");
    %>
    <div>
        <h1>Lets add some movies</h1>
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
        
        <div style="float:left">
            <form action="deleteMovie.jsp" method="post">    
                <table style="float:left">
                    <tr>
                        <td><h1>Do you need to delete a movie?</h1></td>
                    </tr>
                    <tr>
                        <td><input style="width:100%" type="text" name="d_id" placeholder="Insert ID to be Deleted"></td>
                        <td><button style="margin-top:0px" type="submit">Delete</button></td>
                    </tr>
                </table>
            </form>
        </div>
        <div style="float:right">
            <form action="updateMovie.jsp" method="post">    
                <table>
                    <tr>
                        <td><h1>Do you need to update a movie?</h1></td>
                    </tr>
                    <tr>
                        <td><input style="width:100%" type="text" name="u_id" placeholder="Insert ID to be Updated"></td>
                        <td><button style="margin-top:0px" type="submit">Update</button></td>
                    </tr>
                </table>
            </form>
        </div>
        <table style="width: 100%">
            <tr>
                <td><b>ID</b></td>
                <td><b>Title</b></td>
                <td><b>Cost</b></td>
                <td><b>In Stock?</b></td>
            </tr>
            <%
            String inStock;
            while(rs.next()){
            if(Integer.parseInt(rs.getString(5)) > 0){
                inStock = "Yes";
            } else 
                inStock = "No";
            %>
            <tr>
                <td><p><%=rs.getString(1)%></p></td>
                <td><p><%=rs.getString(6)%></p></td>
                <td><p><%=rs.getString(4)%></p></td>
                <td><p><%=inStock%></p></td>
            </tr><%}%> 
        </table>
    </div>
</body>
</html>
