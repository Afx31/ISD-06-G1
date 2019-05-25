<%-- 
    Document   : viewAccessLog
    Created on : 25/05/2019, 5:50:01 PM
    Author     : I
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.dbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/main.css">
        <title>The Archive | Access Log</title>
    </head>
    <body>
        <%
            DateTimeFormatter dft = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            dbManager manager = (dbManager)session.getAttribute("manager"); 
            Users user = (Users)session.getAttribute("userLogin");
            ArrayList<AccessLog> accesslog = manager.findAccessLogs(user.getID());
        %>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
            <a href="myAccount.jsp">My Account</a>
            <a href="cart.jsp">My Cart</a>
            <a>Find Movies</a>
        </div>
        <div class="content">
            <table>
                <tr>
                    <th>Date</th>
                    <th>Event</th>
                    <th> </th>
                </tr>
                <% for (AccessLog al : accesslog) {%>
                <tr>
                    <% LocalDateTime date1 = al.getLdt();
                    String date2 = dft.format(date1);
                    String[] dt = date2.split("T");%>
                    <th><%=dt[0]%></th>
                    <th><%=al.getEvent()%></th>
                    <th>
                        <form action="deleteAccessLog.jsp" method="post">
                            <input type="hidden" name="AccessLogID" value="<%=al.getID()%>"/>
                            <!--<input type="Delete" value="Select" />-->
                            <button style="margin-top:0px">Delete</button>
                        </form>
                    </th>
                </tr>
                <% } %>
            </table>
        </div>
    </body>
</html>
