<%-- 
    Document   : purchaseConfirm
    Created on : 24/05/2019, 10:47:53 PM
    Author     : William Mitchell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Movie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>The Archive | Purchase Order Confirmation</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="CSS/main.css">        
    </head>
    <body>
        <div class="topnav">
            <jsp:include page="header.jsp" flush="true" />
        </div>
        
        <div class="content">
            <%
                ArrayList<Movie> movieArrayList;
                movieArrayList = (ArrayList<Movie>)session.getAttribute("movieList");
                movieArrayList.clear();
                session.setAttribute("movieList", movieArrayList);
            %>            
            <div style="text-align: center;">
                <h1>Order Purchase Successful!</h1>
                <h2>Order number: <%=session.getAttribute("orderNumberID")%></h2>
                <p>Your order purchase was successful. Click <a href="customerHome.jsp"> here</a> to return to the main page.</p>
            </div>
        </div>
    </body>
</html>
