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
            dbManager manager = (dbManager) session.getAttribute("manager");
            String userEmail = request.getParameter("ViewUserofEmail");
            Users requester = (Users) session.getAttribute("userLogin");
            Users user = manager.findUser(userEmail);
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
        </div>
        <div class="content">
            <div class="inner">
                <%if (requester.getRole().equalsIgnoreCase("a")) {%>
                    <p>User's ID is: <%= user.getID()%></p>
                <%}%>
                <p>User's First Name: <%= user.getFirstName()%></p> 
                <p>User's Last Name: <%= user.getLastName()%></p>
                <p>User's email: <%= user.getEmail()%></p>
                <p>User's Phone: <%= user.getPhone()%></p>
                <%if (requester.getRole().equalsIgnoreCase("a")) {%>
                    <p>User's password is: <%= user.getPassword()%></p>  
                    <p>User's role is: <%= user.getRole()%></p>  
                    <form action="deleteUserofID.jsp" method="post">
                        <input type="hidden" name="DeleteUserID" value="<%=user.getID()%>"/>
                        <button style="margin-top:0px">Delete User</button>
                    </form>
                <%}%>
            </div>
        </div>
    </body>
</html>
