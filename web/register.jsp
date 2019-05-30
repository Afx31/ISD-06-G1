<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import='java.sql.*'%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>The Archive | Register</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/main.css">
    </head>
    <body>
        <div class="topnav">
            <a href="index.jsp"><b>The Archive</b></a>
        </div>
        <div class="content">
            <div class="centerbox2">
                <h1>Welcome to The Archive</h1>
                <h2>Please provide the following!</h2>
                <form action="registerAction.jsp" method="post">
                    <input type="text" id="name" name="r_fname" placeholder="First Name">
                    <input type="text" id="name" name="r_lname" placeholder="Last Name">
                    <input type="email" id="email" name="r_email" placeholder="Email">
                    <input type="text" id="phone"  name="r_phone" placeholder="Phone"> 
                    <input type="password" id="password" name="r_password" placeholder="Password">
                    <input type="password" id="password" name="r_Cpassword" placeholder="Confirm Password">          
                    <label class="tos" for="tos">Agree to Terms of Service</label>
                    <input type="checkbox" name="r_tos">
                    <a style="font-size: 12px" href="login.jsp" >Already A Member?</a><br>  
                    <button type="submit">Register</button>
                </form>
                <div class="invalidInput">
                    <c:if test="${invalidInput!=null}"> 
                        <p><b> <c:out value="${invalidInput}"/> </b></p> 
                    </c:if>
                </div>
            </div>
            <div class="footer">
                <p>Introduction to Software Development - 13217702, 12924991, 12747717, 13208297</p>
            </div>
        </div>
        ${invalidInput = null} 
    </body>
</html>
