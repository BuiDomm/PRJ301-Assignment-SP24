<%-- 
    Document   : loginForm
    Created on : Jan 21, 2024, 11:07:16 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>
        <link rel="stylesheet" href="asset/css/reset.css"/>
        <link rel="stylesheet" href="asset/css/loginform.css"/>
        <link rel="stylesheet" href="asset/css/styles.css" />

        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">

    </head>
    <body>
        <jsp:include page="include/headerlogin.jsp"></jsp:include>
            <div class="main">

                <div class="right">
                    <h2 class="title-bank">92Lib</h2>
                <c:set var="cookie" value="${pageContext.request.cookies}"/>
                <p class="desc-bank">Not to say much, this library is the best in the universe, the best in the galaxy, the best on this planet and the best of the best.</p>

            </div>
            <form class="form" method="post" action="login">
                <p id="heading">Welcome Back</p>
                <div class="field">
                    <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M13.106 7.222c0-2.967-2.249-5.032-5.482-5.032-3.35 0-5.646 2.318-5.646 5.702 0 3.493 2.235 5.708 5.762 5.708.862 0 1.689-.123 2.304-.335v-.862c-.43.199-1.354.328-2.29.328-2.926 0-4.813-1.88-4.813-4.798 0-2.844 1.921-4.881 4.594-4.881 2.735 0 4.608 1.688 4.608 4.156 0 1.682-.554 2.769-1.416 2.769-.492 0-.772-.28-.772-.76V5.206H8.923v.834h-.11c-.266-.595-.881-.964-1.6-.964-1.4 0-2.378 1.162-2.378 2.823 0 1.737.957 2.906 2.379 2.906.8 0 1.415-.39 1.709-1.087h.11c.081.67.703 1.148 1.503 1.148 1.572 0 2.57-1.415 2.57-3.643zm-7.177.704c0-1.197.54-1.907 1.456-1.907.93 0 1.524.738 1.524 1.907S8.308 9.84 7.371 9.84c-.895 0-1.442-.725-1.442-1.914z"></path>
                    </svg>
                    <input autocomplete="off" placeholder="Username" class="input-field" type="text" name="username" value="${cookie.cuser.value}">
                </div>
                <div class="field">
                    <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"></path>
                    </svg>
                    <input autocomplete="off" placeholder="Password" class="input-field" type="password" name="password" value="${cookie.cpass.value}">
                </div>

                <div style="margin-left:-90px;margin-top: 10px;">
                    <input type="checkbox" name="rem" ${cookie.crem != null ?"checked":""} /> <i style="
                                                                                                 transition: .4s ease-in-out;
                                                                                                 color: white;
                                                                                                 font-weight: 600;
                                                                                                 font-family: Open Sans, sans-serif;">Remember me </i> 
                </div>
                <h3 style="color: red; font-weight: 600;">${requestScope.error}</h3>
                <div class="btnn">
                    <button class="button1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#!" style="text-decoration: none ;display: inline-block; padding: 3px 8px;">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                    <button  class="button2"><a href="register.jsp" style="text-decoration: none; display: inline-block; padding: 3px 8px;" >Sign Up</a></button>

                </div>
                <a class="button3" href="fogort.jsp" style="text-decoration: none">Forgot Password</a>

            </form>

        </div>
        <a href="managerlogin.jsp" style="display: inline-block;float: right; margin-top: -40px;margin-right: 10px;"> Switch Login with Manager</a>
    </body>
</html>
