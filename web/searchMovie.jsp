<%-- 
    Document   : customerHome
    Created on : 15/05/2019, 11:16:19 AM
    Author     : jbrien
--%>

<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" import="java.util.*" import="model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>The Archive | Searching Movies</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/main.css">
</head>

<%
    String search = request.getParameter("search");
    //System.out.println(search);
    dbManager manager = (dbManager)session.getAttribute("manager");
    ResultSet rs = manager.findMovie(search);
%>

<body>
    <div class="topnav">
        <jsp:include page="header.jsp" flush="true" />
        <a href="myAccount.jsp">My Account</a>
        <a href="cart.jsp">My Cart</a>
        <a href="searchMovie.jsp">Find Movies</a>
        <a><b>The Archive</b></a>
    </div>
    <div class="centerboxhome">
        <h1>Here are the results</h1>
        <table>
            <tr>
                <td><b>Title</b></td>
                <td><b>Genre</b></td>
                <td><b>Director</b></td>
                <td><b>Cost</b></td>
                <td><b>In Stock?</b></td>
                <td><b>Add to Cart</b></td>
            </tr>
            <%
            String inStock;
            while(rs.next()){
                
                if (Integer.parseInt(rs.getString(5)) > 0) {
                    inStock = "Yes";
                } else {
                    inStock = "No";
                }
            %>
            <tr>
                <td><h3><%=rs.getString(6)%></h3></td>
                <td><p><%=rs.getString(2)%></p></td>
                <td><p><%=rs.getString(3)%></p></td>
                <td><p><%=rs.getString(4)%></p></td>
                <td><p><%=inStock%></p></td>
                <td>
                    <% if (inStock == "No") { %>
                        <p>Not Avaliable</p>
                        
                    <% } else { %>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="selectedMovieID" value="<%=rs.getString(1)%>"/>
                            <input type="submit" value="Add to Cart" />
                        </form>
                    <% } %>
                </td>
            </tr><%}%> 
        </table>
        <a href="customerHome.jsp">Back to search again</a>
    </div> 
</body>
</html>
