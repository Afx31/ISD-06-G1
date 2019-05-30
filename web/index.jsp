<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="controller.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>The Archive | Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/main.css">
    </head>
    <body>
        <div class="topnav">
            <a href="index.jsp"><b>The Archive</b></a>
        </div>

        <div class="outer">
            <div class="middle">
                <div class="inner">
                    <form action="register.jsp" method="post">
                        <button style="margin-top:0px" type="submit">Register</button><br>
                    </form>
                    <form action="login.jsp" method="post">
                        <button type="submit">Login</button><br>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="/ConnServlet" flush="true" />
    </body>
</html>
