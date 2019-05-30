<%-- 
    Document   : viewCustomersOrders
    Created on : 28/05/2019, 9:28:38 PM
    Author     : William Mitchell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.dbManager"%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/main.css">
        <title>The Archive | View Specific Customer Order History</title>
    </head>
    <body>
        <%
            dbManager manager = (dbManager)session.getAttribute("manager");
            String customersEmail = request.getParameter("customersEmail");
            
            Users user = manager.findUser(customersEmail);
            
            ArrayList<Orders> orders = manager.findAllUserOrders(user.getID());
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
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
