<%-- 
    Document   : staffRegisterAction
    Created on : 22/05/2019, 5:38:17 PM
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
        <title>Staff Register Action Page</title>
    </head>

    <body>
        <%
            dbManager manager = (dbManager) session.getAttribute("manager");
            String firstname = request.getParameter("r_fname");
            String lastname = request.getParameter("r_lname");
            String email = request.getParameter("r_email");
            String phone = request.getParameter("r_phone");
            String password = request.getParameter("r_password");
            String Cpassword = request.getParameter("r_Cpassword");
            String role = request.getParameter("r_role");
            if (password == Cpassword) {
                manager.addStaff(firstname, lastname, phone, password, email, role);
                response.sendRedirect("login.jsp");
            } else {
                session.setAttribute("wrongPassword", "Passwords do not match");
                response.sendRedirect("staffRegister.jsp");
            }
        %>    

    </body>
</html>

