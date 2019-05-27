<%-- 
    Document   : deleteAction
    Created on : 27/05/2019, 7:53:50 PM
    Author     : Varun
--%>
<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.util.*"%>
<%@page import="model.*" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Action Page</title>
    </head>
    <body>
        <%
            Users user = (Users)session.getAttribute("userLogin");
            String id = request.getParameter(user.getID());
            dbManager manager = (dbManager) session.getAttribute("manager");
            manager.deleteUser(user.getID());
            response.sendRedirect("register.jsp");
        %>
    </body>
</html>
