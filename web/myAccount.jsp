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
        <title>My Account Page</title>
    </head>
    <body>
       <% 
            if((Users)session.getAttribute("userLogin")==null) {
                response.sendRedirect("login.jsp");  
            }
            Users user = (Users)session.getAttribute("userLogin");
       %>
       <div class="topnav">
           <jsp:include page="header.jsp" flush="true" />
           <a href="customerHome.jsp">Home</a>
           <a href="cart.jsp">My Cart</a>
           <a>Find Movies</a>
        </div>
       <div class="content">
           <div class="centerbox">
                <%if(!user.getRole().equalsIgnoreCase("c")) {%>
                    <p>Your ID is: <%= user.getID() %></p>
                <%}%>
                <p>Hello, <%= user.getFirstName() %> <%= user.getLastName() %></p> 
                <p>Your email: <%= user.getEmail() %></p>
                <p>Your Phone: <%= user.getPhone() %></p>
                <p>Your password is: <%= user.getPassword() %></p>  
                
                <form action="customerHome.jsp">
                    <button>Change Details</button>
                </form>
                <form action="viewAccessLog.jsp">
                    <button>View Access Logs</button>
                </form>
                <form action="customerHome.jsp">
                    <button>View Previous Orders</button>
                </form>
           </div>
       </div>
    </body>
</html>
