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
                if(firstname.length() >= 20 || lastname.length() >= 20 || phone.length() >= 11 || password.length() >= 30 || email.length() >= 90) {
                    session.setAttribute("invalidInput", "A field is over the maximum length");
                    response.sendRedirect("updateDetails.jsp");
                } else if (firstname.isEmpty() || lastname.isEmpty() || email.isEmpty() || phone.isEmpty() || password.isEmpty()) {
                    session.setAttribute("invalidInput", "Fill in all Fields");
                    response.sendRedirect("updateDetails.jsp");
                } else if (!phone.matches("[0-9]+")) {
                    session.setAttribute("invalidInput", " Phone is not a number ");
                    response.sendRedirect("updateDetails.jsp");
                } else {
                    manager.updateUser(id, firstname, lastname, phone, password, email);
                    Users updatedUser = manager.findUser(email);
                    session.setAttribute("userLogin", updatedUser);                
                    response.sendRedirect("myAccount.jsp");
                }
            %>
    </body>
</html>
