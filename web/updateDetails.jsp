<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.util.*"%>
<%@page import="model.*" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Archive | My Account</title>
        <link rel="stylesheet" href="CSS/main.css">
    </head>
    <body>
        <%
            Users user = (Users) session.getAttribute("userLogin");
            dbManager manager = (dbManager)session.getAttribute("manager");
        %>
        <%if (session.getAttribute("userLogin") != null) {%>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
            <a href="customerHome.jsp">Home</a>
            <a href="cart.jsp">My Cart</a>
            <a>Find Movies</a>
        </div>
        <h1>Update Your Details</h1>            
        <form action="confirmUserUpdate.jsp" method="post">
            <input type="text" id="name" name="id" value="<%= user.getID()%>">
            <input type="text" id="name" name="firstname" placeholder = "firstname" value="<%= user.getFirstName()%>">
            <input type="text" id="name" name="lastname" placeholder = "lastname" value="<%= user.getLastName()%>">
            <input type="email" id="email" name="email" placeholder = "email" value="<%= user.getEmail()%>">
            <input type="text" id="phone"  name="phone" placeholder = "phone" value="<%= user.getPhone()%>"> 
            <input type="text" id="password" name="password" placeholder = "password" value="<%= user.getPassword()%>">
            <button type="submit">Update</button>                    
        </form>
        <%}%>     
    </body>
</html>
