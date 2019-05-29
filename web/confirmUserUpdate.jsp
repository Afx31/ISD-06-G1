<%-- 
    Document   : confirmUserUpdate
    Created on : 27/05/2019, 4:13:59 PM
    Author     : Varun
--%>

<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" import="java.util.*" import="model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>The Archive | Details Updated</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/main.css">
    </head>

    <body>
            <%       
                Users user = (Users)session.getAttribute("userLogin");
                String id = user.getID();
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String phone = request.getParameter("phone");
                String password = request.getParameter("password");
                String email = request.getParameter("email");
                dbManager manager = (dbManager) session.getAttribute("manager");
                manager.updateUser(id, firstname, lastname, phone, password, email);
                Users updatedUser = manager.findUser(email);
                session.setAttribute("userLogin", updatedUser);                
                response.sendRedirect("myAccount.jsp");
            %>
    </body>
</html>
