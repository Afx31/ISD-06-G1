<%-- 
    Document   : confirmOrder
    Created on : 24/05/2019, 10:13:33 PM
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
            <jsp:include page="header.jsp" flush="true" />
            <a href="myAccount.jsp">My Account</a>
            <a href="cart.jsp">My Cart</a>
            <a><b>The Archive</b></a>
        </div>
        <%
            Users users = (Users) session.getAttribute("userLogin");
            ArrayList<Movie> movieArrayList;
            movieArrayList = (ArrayList<Movie>)session.getAttribute("movieList");
            double totalCost = 0.00;
            
            for (Movie movie : movieArrayList) {
                totalCost = totalCost + Double.parseDouble(movie.getPrice());
            }
        %>
        
        <div class="content">
            <h1 style="text-align: center;">Purchase Order</h1>
            
            <form action="purchaseOrder.jsp" method="get">
                <h3>Movie details:</h3>
                <table>
                    <% for (Movie m : movieArrayList) { %>
                    <tr><td><b>Title: </b><%=m.getTitle()%></td></tr>
                    <tr><td><b>Genre: </b><%=m.getGenre()%></td></tr>
                    <tr><td><b>Price: </b><%=m.getPrice()%></td></tr>
                    <tr>
                        <td><b>Quantity:</b></td>
                        <td><input type="text" name="numberOfCopies" maxlength="3" size="3" value="1"/></td>
                    </tr>                        
                    <% } %>
                </table>
                <h3>Your details:</h3>
                <table>
                    <tr><td><b>Email: </b>email</tr></td>
                    <tr><td><b>First Name: </b>f name</tr></td>
                    <tr><td><b>Last Name: </b>l name</tr></td>
                    <tr><td><b>Order Total: </b><%=totalCost%></tr></td>
                    <tr>
                        <td><b>Payment Method:</b></td>
                        <td><select name="paymentMethod">
                                <option value="PayPal">PayPal</option>
                                <option value="MasterCard">MasterCard</option>
                                <option value="Visa">Visa</option>
                            </select></td>
                            <td><input type="submit" value="Purchase Order"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
