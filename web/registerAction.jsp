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
            String phone = request.getParameter("r_phone");
            String password = request.getParameter("r_password");
            String Cpassword = request.getParameter("r_Cpassword");
            if (firstname.isEmpty() || lastname.isEmpty() || email.isEmpty() || phone.isEmpty() || password.isEmpty() || Cpassword.isEmpty()) {
               session.setAttribute("emptyFields", "Fill in all Fields");   
                response.sendRedirect("register.jsp");               
            } else if (password.equals(Cpassword)) {
                manager.addUser(firstname, lastname, phone, password, email);
                response.sendRedirect("login.jsp");
            } else {
              session.setAttribute("wrongPassword", "Passwords do not match");
              response.sendRedirect("register.jsp");
           }
        %>   
        
    </body>
</html>
