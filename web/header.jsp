<%-- 
    Document   : header
    Created on : 25/05/2019, 2:54:24 PM
    Author     : Alson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>The Archive | Header</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/main.css">
    </head>
    <body>
        <%if((Users)session.getAttribute("userLogin")!=null) { %>
            <a href="logoutAction.jsp"><b>Logout</b></a>
        <%} else { %>
            <a href="logoutAction.jsp"><b>Exit</b></a>
        <%} %>
    </body>
</html>
