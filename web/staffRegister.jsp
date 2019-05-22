<%-- 
    Document   : staffRegister
    Created on : 22/05/2019, 5:37:22 PM
    Author     : Varun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import='java.sql.*'%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>The Archive | Staff Register</title>
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
            <h1>Welcome to Staff Registration</h1>
                <h2>Please provide the following!</h2>
                <form action="staffRegisterAction.jsp" method="post">
                    <input type="text" id="name" name="r_fname" placeholder="First Name">
                    <input type="text" id="name" name="r_lname" placeholder="Last Name">
                    <input type="email" id="email" name="r_email" placeholder="Email">
                    <input type="text" id="phone"  name="r_phone" placeholder="Phone"> 
                    <input type="password" id="password" name="r_password" placeholder="Password">
                    <input type="password" id="password" name="r_Cpassword" placeholder="Confirm Password">
                    <input type="text" id="role"  name="r_role" placeholder="Role">                     
                    <label class="tos" for="tos">Agree to Terms of Service</label>
                    <input type="checkbox" name="r_tos">
                    <a style="font-size: 12px" href="login.jsp" >Already A Staff?</a><br>  
                    <button type="submit">Register</button>
            </form>
                <div class="wrongPassword">
                <c:if test="${wrongPassword!=null}"> 
                    <p><b> <c:out value="${wrongPassword}"/> </b></p> 
                </c:if>
            </div>
          </div>
        </div>
        <div class="footer">
          <p>Introduction to Software Development - 13217702, 12924991, 12747717, 13208297</p>
        </div>
        ${wrongPassword = null}                
    </body>
</html>

