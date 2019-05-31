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
            String tos = request.getParameter("r_tos");
            if(firstname.length() >= 20 || lastname.length() >= 20 || phone.length() >= 11 || password.length() >= 30 || email.length() >= 90) {
                session.setAttribute("invalidInput", "A field is over the maximum length");
                response.sendRedirect("register.jsp");
            } else if (firstname.isEmpty() || lastname.isEmpty() || email.isEmpty() || phone.isEmpty() || password.isEmpty() || Cpassword.isEmpty()) {
                session.setAttribute("invalidInput", "Fill in all Fields");
                response.sendRedirect("register.jsp");
            } else if (tos == null) {
                session.setAttribute("invalidInput", "Please agree to TOS");
                response.sendRedirect("register.jsp");
            } else if (password.equals(Cpassword)) {
                if (!phone.matches("[0-9]+")) {
                    session.setAttribute("invalidInput", " Phone is not a number ");
                    response.sendRedirect("register.jsp");
                } else {
                    manager.addUser(firstname, lastname, phone, password, email);
                    response.sendRedirect("login.jsp");
                }
            } else {
                session.setAttribute("invalidInput", "Passwords do not match");
                response.sendRedirect("register.jsp");
            }
        %>   

    </body>
</html>
