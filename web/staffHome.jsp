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
        <a>Find Movies</a>
        <a><b>The Archive</b></a>
    </div>
    <%
        dbManager manager = (dbManager)session.getAttribute("manager");
        ResultSet rs = manager.findMovie("");
    %>
    <div>
        <div>
            <h1>Do you need to add a movie?</h1>
            <form action="staffAddMovie.jsp" method="post">    
                <table>
                    <tr>
                        <td><button style="margin-top:0px" type="submit">Goto Add Movie</button></td>
                    </tr>
                </table>
            </form>
        </div>
        <div>
            <h1>Do you need to delete a movie?</h1>
            <form action="deleteMovie.jsp" method="post">    
                <table>
                    <tr>
                        <td><input type="text" name="d_id" placeholder="Insert ID to be Deleted"></td>
                        <td><button style="margin-top:0px" type="submit">Delete</button></td>
                    </tr>
                </table>
            </form>
        </div>
        <div>
            <h1>Do you need to update a movie?</h1> 
            <form action="updateMovie.jsp" method="post">    
                <table>
                    <tr>
                        <td><input type="text" name="u_id" placeholder="Insert ID to be Updated"></td>
                        <td><button style="margin-top:0px" type="submit">Update</button></td>
                    </tr>
                </table>
            </form>
        </div>
        <div>
            <h1>List of Movies</h1>
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
    </div>
</body>
</html>
