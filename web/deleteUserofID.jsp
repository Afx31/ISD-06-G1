<%-- 
    Document   : deleteUserofID
    Created on : 30/05/2019, 11:04:29 PM
    Author     : I
--%>

<%@page import="model.dao.dbManager"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete User Page</title>
    </head>
    <body>
        <%
            String userID = request.getParameter("DeleteUserID");
            dbManager manager = (dbManager) session.getAttribute("manager");
            manager.deleteUser(userID);
            response.sendRedirect("viewAllUsers.jsp");
        %>
    </body>
</html>
