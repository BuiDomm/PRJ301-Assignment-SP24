<%-- 
    Document   : mnviewlistbook
    Created on : Feb 27, 2024, 11:18:17 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>
        <link rel="stylesheet" href="asset/css/reset.css" />
        <link rel="stylesheet" href="asset/css/styles.css" />
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">
    </head>
    <body>
        <header class="header--app">
            <div class="content">
                <div class="header--main">
                    <a href="#!" class="logo--action" onclick="scrollToTop()">
                        <figure class="logo">
                            <img
                                src="./img/logo-app.svg"
                                alt=""
                                class="logo--img"
                                />
                            <p class="logo--desc">92Lib</p>
                        </figure>
                    </a>
                    <ul class="nav--bar__topheader">
                        <li class="navbar--item" >
                            <a class="navbar--fonts" href="#home">Home</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="#product">Product</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="#feature">Features</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="#blog">Blog</a>
                        </li>
                    </ul>

                    <div class="action--btn action--home">
                        <div class="user--state">
                            <%
                                  int randomNumber = (int) (Math.random() * 6) + 1;
                            %>
                            <img src="./img/user<%= randomNumber %>.jpg" alt="" class="img--user">
                            <div class="action--btn login--user">
                                <a href="#!"><h3 class="user--action login--btn  ">${sessionScope.account.surname}</h3></a>
                            </div>

                        </div>



                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
