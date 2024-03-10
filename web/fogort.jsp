<%-- 
    Document   : fogort
    Created on : Mar 9, 2024, 5:59:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="asset/css/fogort.css" />

        <title>92 Library</title>
    </head>
    <body>
        <div class="container-box">
            <form method="post" action="fogort">
                <p class="logo">92 Library</p>
                <p style="font-size: 13px;text-align: center;color: #696d76;">* Please input your information in here!</p>
                <input autocomplete="off" type="text" placeholder="Username" required="" name="usernameold">
                <input autocomplete="off" type="email" placeholder="Email" required="" name="emailold">
                <h2 style="font-size: 13px; padding: 0; margin: 0;color: red;margin-bottom: 5px">${requestScope.notice}</h2>

                <button class="login">Submit</button>
                <hr>
                <a class="create-account" href="loginForm.jsp">Have remembered the password</a>
            </form>

        </div>
    </body>
</html>
