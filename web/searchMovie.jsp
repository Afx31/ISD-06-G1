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
    <title>The Archive | Searching Movies</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/main.css">
</head>

<%
    String search = request.getParameter("search");
    //System.out.println(search);
    dbManager manager = (dbManager)session.getAttribute("manager");
    ResultSet rs = manager.findMovie(search);
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
        <h1>Here are the results</h1>
        <table style="width: 100%">
            <tr>
                <td><b>Title</b></td>
                <td><b>Genre</b></td>
                <td><b>Director</b></td>
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
                <td><h3><%=rs.getString(6)%></h3></td>
                <td><p><%=rs.getString(2)%></p></td>
                <td><p><%=rs.getString(3)%></p></td>
                <td><p><%=rs.getString(4)%></p></td>
                <td><p><%=inStock%></p></td>
            </tr><%}%> 
        </table>
        <a href="customerHome.jsp">Back to search again</a>
    </div> 
</body>
</html>
