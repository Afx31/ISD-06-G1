<%-- 
    Document   : purchaseOrderLoginCheck
    Created on : 22/05/2019, 5:49:41 PM
    Author     : William Mitchell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Archive | Purchase Order Login Check</title>
    </head>
    <body>
        <%
            if (session.getAttribute("userLogin")!=null) {
                response.sendRedirect("confirmOrder.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
