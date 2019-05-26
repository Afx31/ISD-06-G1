<%-- 
    Document   : cartCancelledConfirm
    Created on : 22/05/2019, 5:15:52 PM
    Author     : William Mitchell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/main.css">
    </head>
    <body>
        <div class="topnav">
            <a href="login.jsp">Log Out</a>
            <a>My Account</a>
            <a href="customerHome.jsp">Find Movies</a>
            <a><b>The Archive</b></a>
        </div>
        
        <div class="content">
            <% 
                ArrayList<Movie> movieArrayList;
                movieArrayList = (ArrayList<Movie>)session.getAttribute("movieList");
                movieArrayList.clear();
                session.setAttribute("movieList", movieArrayList);
            %>            
            <div style="text-align: center;">
                <h1>Order had been cancelled. </h1>
                <p>Your order has been cancelled. Click <a href="customerHome.jsp">here</a> to return to the main page.</p>
            </div>
        </div>
    </body>
</html>
