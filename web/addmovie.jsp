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
    <title>The Archive | Movie Added</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/main.css">
</head>
<%
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    String director = request.getParameter("director");
    String price = request.getParameter("price");
    String stock = request.getParameter("stock");
    String published = request.getParameter("published");
%>
<body>
    <div class="topnav">
        <jsp:include page="header.jsp" flush="true" />
    </div>
    <div>
        <%
            dbManager manager = (dbManager)session.getAttribute("manager");
            try {manager.addMovie(id,genre,director,price,stock,title,published);%>
                <p style="text-align: center">Movie Added!</p>
            <%} catch(Exception e) {%>
                <p style="text-align: center">Error! Movie could not be added. ID already exists?</p>
            <%}
        %>
        <a style="text-align: center" href="staffHome.jsp">Back to manage movies</a>
    </div>  
</body>
</html>
