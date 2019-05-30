<%-- 
    Document   : viewAllUsers
    Created on : 25/05/2019, 9:12:23 PM
    Author     : Alson
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Users"%>
<%@page import="model.dao.dbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/main.css">
        <title>The Archive | All Users</title>
    </head>
    <body>
        <%
            dbManager manager = (dbManager) session.getAttribute("manager");
            Users requester = (Users) session.getAttribute("userLogin");
            ArrayList<Users> users = manager.findAllUsers(requester);
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
        </div>
        <div class="content">
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th> </th>
                </tr>
                <% for (Users user : users) {%>
                <tr>
                    <th><%=user.getFirstName()%></th>
                    <th><%=user.getLastName()%></th>
                    <th><%=user.getPhone()%></th>
                    <th><%=user.getEmail()%></th>
                    <th>
                        <form action="viewUserofID.jsp" method="post">
                            <input type="hidden" name="ViewUserofEmail" value="<%=user.getEmail()%>"/>
                            <button style="margin-top:0px">View Details</button>
                        </form>
                    </th>
                </tr>
                <% }%>
            </table>
        </div>
    </body>
</html>
