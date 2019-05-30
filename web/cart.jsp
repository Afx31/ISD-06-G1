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
            <jsp:include page="header.jsp" flush="true" />
        </div>
        <div class="content">
            <div style="text-align: center;">
                <table>
                    <tr>
                        <th><button style="margin-top: 0px" onclick="location.href = 'customerHome.jsp'">Choose another movie</button></th>
                        <th>
                            <form action="purchaseOrderLoginCheck.jsp" method="get">
                                <button style="margin-top:0px">Purchase Order</button>
                            </form>
                        </th>
                        <th>
                            <form action="cartCancelledConfirm.jsp" method="get">
                                <button style="margin-top:0px">Cancel Order</button>     
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