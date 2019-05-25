<%-- 
    Document   : viewUserofID
    Created on : 25/05/2019, 9:24:15 PM
    Author     : Alson
--%>

<%@page import="model.dao.dbManager"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Archive | View User Details</title>
    </head>
    <body>
        <%
            dbManager manager = (dbManager)session.getAttribute("manager");
            String userEmail = request.getParameter("ViewUserofEmail");
            Users user = manager.findUser(userEmail);
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
            <a href="myAccount.jsp">My Account</a>
            <a href="staffHome.jsp">Home</a>
        </div>
        <div class="content">
                <div class="centerbox">
                     <p>User's ID is: <%= user.getID() %></p>
                     <p>User's First Name: <%= user.getFirstName() %></p> 
                     <p>User's Last Name: <%= user.getLastName() %></p>
                     <p>User's email: <%= user.getEmail() %></p>
                     <p>User's Phone: <%= user.getPhone() %></p>
                     <p>User's password is: <%= user.getPassword() %></p>  
                </div>
            </div>
    </body>
</html>
