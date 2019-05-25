<%-- 
    Document   : logoutAction
    Created on : 25/05/2019, 3:28:16 PM
    Author     : Alson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.util.*"%>
<%@page import="model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Action Page</title>
    </head>
    <body>
        <%
            dbManager manager = (dbManager)session.getAttribute("manager");
            
            if((Users)session.getAttribute("userLogin")!=null) {
                Users user = (Users)session.getAttribute("userLogin");
                manager.addLog(user.getID(),"Logout");
                session.setAttribute("userLogin", null);
            }
            response.sendRedirect("login.jsp");  
        %>
    </body>
</html>
