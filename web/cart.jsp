<%-- 
    Document   : cart
    Created on : 20/05/2019, 11:39:34 PM
    Author     : William Mitchell
--%>

<%@page import="java.util.List"%>
<%@page import="model.dao.dbManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Archive | Cart</title>
        <link rel="stylesheet" href="CSS/main.css">
    </head>
    <body>
        <%
            ArrayList<Movie> movieArrayList;
            movieArrayList = (ArrayList<Movie>)session.getAttribute("movieList");
        %>
        <div class="topnav">
            <a href="login.jsp">Log Out</a>
            <a>My Account</a>
            <a href="cart.jsp">My Cart</a>
            <a href="customerHome.jsp">Find Movies</a>
            <a href="staffHome.jsp">Staff Functions</a>
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
            <a><b>The Archive</b></a>
        </div>
        <div class="content">
            <div style="text-align: center;">
                <table>
                    <tr>
                        <th><input type="button" value="Choose Another Movie" onclick="location.href = 'customerHome.jsp'"></th>
                        <th>
                            <form action="purchaseOrderUserCheck.jsp" method="get">
                                <input type="hidden" name="id" value="{title}"/>
                                <input type="submit" value="Purchase Order" name="purchaseOrder"/>
                            </form>
                        </th>
                        <th>
                            <form action="cartCancelledConfirm.jsp" method="get">
                                <input type="submit" value="Cancel Order">     
                            </form>
                        </th>
                    </tr>
                </table>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Publish Date</th>
                        <th>Price</th>
                        <th>Director</th>
                        <th>Available Copies</th>
                    </tr>
                    <% if (session.getAttribute("movieList")!=null) {
                        for (Movie m : movieArrayList) {%>
                    <tr>
                        <th><%=m.getID()%></th>
                        <th><%=m.getTitle()%></th>
                        <th><%=m.getGenre()%></th>
                        <th><%=m.getPublished()%></th>
                        <th><%=m.getPrice()%></th>
                        <th><%=m.getDirector()%></th>
                        <th><%=m.getStock()%></th>
                    </tr>
                    <% } 
                    } else {
                        movieArrayList = new ArrayList<Movie>();
                    } %>
                </table>
            </div>
        </div>
    </body>
</html>