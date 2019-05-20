<%-- 
    Document   : loginAction
    Created on : 19/05/2019, 4:53:02 PM
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
        <title>Login Action Page</title>
    </head>
    <body>
        <%
            //Activate the database search-validate once DBManager functions are completed
            dbManager manager = (dbManager)session.getAttribute("manager"); 
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            //System.out.print(email+password); // email and pass work
            if(manager == null) {
                System.out.println("manager is null");
            }
            Users user = manager.findUser(email, password); // null pointer????
            //Users user = new Users();
            if (user != null) {
                session.setAttribute("userLogin", user);
                if(user.getRole().equalsIgnoreCase("c")) {
                    response.sendRedirect("customerHome.jsp");  
                } else if(user.getRole().equalsIgnoreCase("r") || user.getRole().equalsIgnoreCase("a")) {
                    response.sendRedirect("staffHome.jsp");  
                }                   
            }else{
                session.setAttribute("wrongInfo", "Incorrect Email or Password");
                response.sendRedirect("login.jsp");                               
            }  
        %>
            
    </body>
</html>
