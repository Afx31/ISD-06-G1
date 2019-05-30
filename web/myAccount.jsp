<%-- 
    Document   : myAccount
    Created on : 25/05/2019, 5:21:15 PM
    Author     : Alson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Archive | My Account</title>
        <link rel="stylesheet" href="CSS/main.css">
    </head>
    <body>
        <%
            if (session.getAttribute("userLogin") == null) {
                response.sendRedirect("login.jsp");
            }
            Users user = (Users) session.getAttribute("userLogin");
        %>
        <%if (session.getAttribute("userLogin") != null) {%>
            <div class="topnav">
                <jsp:include page="header.jsp" flush="true" />
            </div>
            <div class="content">
                <div class="centerbox">
                    <%if (!user.getRole().equalsIgnoreCase("c")) {%>
                        <p>Your ID is: <%= user.getID()%></p>
                    <%}%>
                    <p>Hello, <%= user.getFirstName()%> <%= user.getLastName()%></p> 
                    <p>Your email: <%= user.getEmail()%></p>
                    <p>Your Phone: <%= user.getPhone()%></p>
                    <p>Your password is: <%= user.getPassword()%></p>  

                    <form action="updateDetails.jsp">
                        <button>Update Details</button>
                    </form>
                    <form action="deleteAction.jsp">
                        <button>Delete Account</button>
                    </form>
                    <form action="viewAccessLog.jsp">
                        <button>View Access Logs</button>
                    </form>
                    <%if (user.getRole().equalsIgnoreCase("c")) {%>
                        <form action="viewUserOrders.jsp">
                            <button>View Previous Orders</button>
                        </form>
                    <%}%>
                </div>
            </div>
        <%}%>     
    </body>
</html>
