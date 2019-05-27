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
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
            <a href="myAccount.jsp">My Account</a>
            <a href="staffHome.jsp">Home</a>
        </div>
        <div class="content">
            <table>
                <tr>
                    <th>Order ID</th>
                    <th>Purchased Date</th>
                    <th>Status</th>
                    <th>Payment Method</th>
                    <th>Total Cost</th>
                    <th> </th>
                </tr>
                <% for (Orders order : orders) {%>
                <tr>
                    <th><%=order.getID()%></th>
                    <th><%=order.getPurchaseDate()%></th>
                    <th><%=order.getStatus()%></th>
                    <th><%=order.getPayment()%></th>
                    <th><%=order.getTotalCost()%></th>
                </tr>
                <% } %>
            </table>
        </div>
    </body>
</html>
