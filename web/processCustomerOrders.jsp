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
    </head>
    <body>
        <%
            dbManager manager = (dbManager) session.getAttribute("manager");         
            ArrayList<Orders> orders = manager.findProcessingOrders();
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
            <a href="staffHome.jsp">Home</a>
        </div>
        <div>
            <form action="staffHome.jsp" method="post">    
                <table>
                    <tr>
                        <tr>
                            <%
                                for (Orders o : orders) {
                                    manager.confirmOrder(o.getID());
                                }
                            %>
                            <td><button style="margin-top:0px" type="submit">Process Customers Orders</button></td>
                        </tr>
                    </tr>
                </table>
            </form>
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
