<%-- 
    Document   : viewUserOrders
    Created on : 27/05/2019, 10:58:49 PM
    Author     : William Mitchell
--%>

<%@page import="model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.dbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/main.css">
        <title>The Archive | View User Orders</title>
    </head>
    <body>
        <%
            //set value for User's ID
            Users users = (Users) session.getAttribute("userLogin");            
            String userID = users.getID();
            
            dbManager manager = (dbManager)session.getAttribute("manager"); 
            ArrayList<Orders> orders = manager.findAllUserOrders(userID);
            ArrayList<MovieOrder> movieOrder = new ArrayList<MovieOrder>();
            
            for (Orders o : orders) {
                movieOrder = manager.findAllUserMovieOrders(o.getID());
            }
            
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
        </div>
        <div class="content">
            <table>
                <tr>
                    <th>Order ID</th>
                    <th>Movie ID</th>
                    <th>Quantity</th>
                </tr>
                <% for (MovieOrder movie : movieOrder) {%>
                <tr>
                    <th><%=movie.getOrderID()%></th>
                    <th><%=movie.getMovieID()%></th>
                    <th><%=movie.getQuantity()%></th>
                </tr>
                <% } %>
            </table>
        </div>
    </body>
</html>
