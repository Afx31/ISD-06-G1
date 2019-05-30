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
        <jsp:include page="header.jsp" flush="true" />
    </div>
    <div class="centerboxhome">
        <%
            try {
            manager.deleteMovie(id);
            Movie m = manager.findMovieID(id);
            %>
                <p>Error! Movie not found</p>
            <%
            
            } catch (Exception e) {%>
                <p>Movie Deleted :(</p>
                <a href="staffHome.jsp">Back to Add another movie</a>
            <%}%>  
    </div>
    
    
    
</body>
</html>