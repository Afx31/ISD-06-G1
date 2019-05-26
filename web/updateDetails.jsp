<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.util.*"%>
<%@page import="model.*" import="java.sql.*"%>
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
            <a href="customerHome.jsp">Home</a>
            <a href="cart.jsp">My Cart</a>
            <a>Find Movies</a>
        </div>
        <form action="updateDetails.jsp" method="POST">
            <table>
                <tr><td>Student ID</td><td><%= user.getID()%></td></tr>
                <tr><td>First name</td><td><input type="text" value="<%= user.getFirstName()%>" name="name"></td></tr>
                <tr><td>Last name</td><td><input type="text" value="<%= user.getLastName()%>" name="name"></td></tr>                
                <tr><td>Email</td><td><input type="text" value="<%= user.getEmail()%>" name="email"></td></tr>                
                <tr><td>Password</td><td><input type="password" value="<%= user.getPassword()%>" name="password"></td></tr>   
                <tr><td>Phone Number</td><td><input type="date" value="<%= user.getPhone()%>" name="dob"></td></tr> 
                <tr><td>Role</td><td> <input type="color" name ="favcol" <%= user.getRole()%>></td></tr>
                <tr><td><input type="hidden" value="updated" name="updated"></td>
                    <td><input class="button" type="submit" value="Save"> 
                    </td>
                </tr>
            </table>
        </form>
        <%           
            dbManager manager = (dbManager) session.getAttribute("manager");

            if (request.getParameter("updated") != null) {
                manager.updateUser(user.getID(), request.getParameter("firstname"), request.getParameter("lastname"), request.getParameter("email"),
                        request.getParameter("password"), request.getParameter("phone"), request.getParameter("role"));
                Users userEdit = manager.findUser(request.getParameter("email"));

                if (userEdit != null) {
                    session.setAttribute("user", userEdit);
                %>
                    <p class="outline"> User details updated.</p>
                <%} else {%>
                    <p class="outline"> Could not update database!</p> 
                <%}%>
            <%}%>  
    </body>
</html>
