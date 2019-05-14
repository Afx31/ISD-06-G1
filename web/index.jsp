<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import='java.sql.*'%>

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
          <a><b>The Archive</b></a>
        </div>
        <div class="content">
          <div class="centerbox">
            <h1>Welcome</h1>
            <h2>Give us some details to get started!</h2>
            <form action="home.jsp" method="post">
              <input type="text" id="name" name="r_name" placeholder="Full Name">
              <input type="text" id="email" name="r_email" placeholder="Email">
              <input type="password" id="password" name="r_password" placeholder="Password">
              <input type="password" id="confirm" name="r_confirm" placeholder="Confirm">
              <label class="tos" for="tos">Agree to Terms of Service</label>
              <input type="checkbox" name="r_tos">
              <a style="font-size: 12px" href="login.jsp" >Already Registered?</a><br>  
              <button type="submit">Register</button>
            </form>
          </div>
        </div>
        <div class="footer">
          <p>Introduction to Software Development - 13217702, 12924991, 12747717, 13208297</p>
        </div>
    </body>
</html>