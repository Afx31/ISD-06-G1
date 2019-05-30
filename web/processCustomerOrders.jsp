<%-- 
    Document   : processCustomersOrders
    Created on : 29/05/2019, 4:50:47 PM
    Author     : William Mitchell
--%>

<%@page import="model.Orders"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.dbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Archive | Process Customers Orders</title>
        <link rel="stylesheet" href="CSS/main.css">
    </head>
    <body>
        <%
            dbManager manager = (dbManager) session.getAttribute("manager");         
            ArrayList<Orders> orders = manager.findProcessingOrders();
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
        </div>
        <%if(!orders.isEmpty()) {%>
        <div>
            <div style="margin-top: 20px" class="inner">
            <form action="staffHome.jsp" method="post">    
                <%
                    for (Orders o : orders) {
                        manager.editOrderStatus(o.getID(), "Completed");
                    }
                %>
                <button style="margin-top:0px" type="submit">Process Customers Orders</button>
            </form>
            </div>
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
        <%} else {%>    
        <div class="content">
            <div class="centerboxhome">
                <h1>All Orders are fulfilled</h1>
            </div>
        </div>
        <%}%>
    </body>
</html>
