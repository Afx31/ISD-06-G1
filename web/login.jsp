<%-- 
    Document   : login
    Created on : May 8, 2019, 4:43:27 PM
    Author     : Alson
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="loginUser" class="model.Users" scope="session"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>The Archive | Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/main.css"> 
    </head>
    
    <body>
        
        <div class="topnav">
          <a href="index.jsp"><b>The Archive</b></a>
        </div>

        <div class="content">
          <div class="centerbox">
            <h1>Welcome Back</h1>
            <h2>The Archive Awaits you!</h2>
            <form action="loginAction.jsp" method="post">
              <input type="email" id="email" name="email" placeholder="Email">
              <input type="password" id="password" name="password" placeholder="Password">
              <a style="font-size: 12px" href="register.jsp" >Not Registered?</a><br>
              <button type="submit">Sign In</button><br>
            </form>
            <form action="customerHome.jsp">
                <button>Just Browsing?</button>
            </form>
            <div class="wrongInfo">
                <c:if test="${wrongInfo!=null}"> 
                    <p><b> <c:out value="${wrongInfo}"/> </b></p> 
                </c:if>
            </div>
          </div>
        </div>

        <div class="footer">
          <p>Introduction to Software Development - 13217702, 12924991, 12747717, 13208297</p>
        </div>
        ${wrongInfo = null}
    </body>
</html>