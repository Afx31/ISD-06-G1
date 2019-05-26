<%-- 
    Document   : addToCart
    Created on : 22/05/2019, 5:34:30 PM
    Author     : William Mitchell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Movie"%>
<%@page import="model.dao.dbManager"%>
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
            String id = request.getParameter("id");
            
            Movie movie = manager.findMovieID(id);
            ArrayList<Movie> movieArrayList;
            if (session.getAttribute("movieList")!=null) {
               movieArrayList = (ArrayList<Movie>)session.getAttribute("movieList");
            } else {
                movieArrayList = new ArrayList<Movie>();
            }
            movieArrayList.add(movie);
            session.setAttribute("movieList", movieArrayList);
            
            response.sendRedirect("cart.jsp");
        %>
    </body>
</html>
