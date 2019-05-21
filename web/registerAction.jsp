<%-- 
    Document   : registerAction
    Created on : 20/05/2019, 5:59:43 PM
    Author     : Varun
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
        <title>Register Action Page</title>
    </head>

    <body>
        <%
            dbManager manager = (dbManager) session.getAttribute("manager");            
            String firstname = request.getParameter("r_fname");
            String lastname = request.getParameter("r_lname");
            String email = request.getParameter("r_email");
            String password = request.getParameter("r_password");
            manager.addUser(firstname, lastname, email, password);
            response.sendRedirect("login.jsp");            
        %>    

    </body>
</html>
