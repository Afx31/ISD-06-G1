<%-- 
    Document   : deleteAccessLog
    Created on : 25/05/2019, 7:05:18 PM
    Author     : Alson
--%>

<%@page import="model.dao.dbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DeleteAccessLog</title>
    </head>
    <body>
        <%
            dbManager manager = (dbManager)session.getAttribute("manager"); 
            String id = request.getParameter("AccessLogID");
            manager.deleteLog(id);
        %>
    </body>
</html>
