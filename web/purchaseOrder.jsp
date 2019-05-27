<%-- 
    Document   : purchaseOrder
    Created on : 24/05/2019, 10:47:30 PM
    Author     : William Mitchell
--%>

<%@page import="java.math.RoundingMode"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="model.dao.dbManager"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            dbManager manager = (dbManager) session.getAttribute("manager");
            Users users = (Users) session.getAttribute("userLogin");
            ArrayList<Movie> movieArrayList;
            movieArrayList = (ArrayList<Movie>) session.getAttribute("movieList");
            String paymentMethod = request.getParameter("paymentMethod");
            String[] numberOfCopies = request.getParameterValues("numberOfCopies");

            Boolean invalid = false;
            for (String copy : numberOfCopies) {
                if (!copy.matches("[0-9]+")) {
                    invalid = true;
                }
            }

            if (invalid) {
                session.setAttribute("quantityErr", "Quantity format incorrect, only numbers allowed!");
                response.sendRedirect("confirmOrder");
            } else {
                //set String value for Random Order Number ID
                int tempRndID = (new Random()).nextInt(999999);
                String orderID = Integer.toString(tempRndID);

                //set value for User's ID
                String userID = users.getID();

                //calc the total price with the number of copies selected by the user                
                Double totalCost = 0.00;
                int i = 0;
                for (Movie m : movieArrayList) {
                    totalCost = totalCost + (Double.parseDouble(m.getPrice()) * Double.parseDouble(numberOfCopies[i]));
                                        
                    int decrement = Integer.parseInt(m.getStock()) - Integer.parseInt(numberOfCopies[i]);                    
                    manager.updateMovieStock(m.getID(), String.valueOf(decrement));
                    
                    if (Integer.parseInt(m.getStock()) < Integer.parseInt(numberOfCopies[i])) {
                        invalid = true;
                    }
                    i++;
                }

                if (!invalid) {
                    //Format the totalCost to 2 deceimal place
                    DecimalFormat df = new DecimalFormat("#.##");

                    //add new order to the database Orders table                    
                    manager.addOrder(orderID, userID, "Ordered", paymentMethod, String.valueOf(df.format(totalCost)));                    
                    
                    session.setAttribute("orderNumberID", orderID);
                    session.setAttribute("quantityErr", " ");                    
                    response.sendRedirect("purchaseConfirm.jsp");
                } else {
                    session.setAttribute("quantityErr", "Too Many Copies");
                    response.sendRedirect("confirmOrder.jsp"); // Redirect error: too many copies                
                }
            }
        %>
    </body>
</html>
