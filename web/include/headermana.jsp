<%-- 
    Document   : headermana
    Created on : Mar 15, 2024, 1:07:05 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="asset/css/reset.css" />
        <link rel="stylesheet" href="asset/css/styles.css" />
        <link rel="stylesheet" href="asset/css/logoutin.css" />

        <title>92 Library</title>
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
                            <a class="navbar--fonts" href="managerview.jsp">Home</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="#product">Product</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="#feature">Features</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="#!">Blog</a>
                        </li>
                    </ul>

                    <div class="action--btn action--home">
                        <div class="user--state">
                            <%
                                  int randomNumber = (int) (Math.random() * 6) + 1;
                            %>
                            <img src="./img/user<%= randomNumber %>.jpg" alt="" class="img--user">
                            <div class="action--btn login--user dropdown">
                                <h3 class="user--action login--btn dropdown-button ">Admin
                                    <div class="dropdown-content">
                                        <a class="item-list" href="#">Setting</a>
                                        <a class="item-list" href="logout">Log Out</a>
                                    </div>
                                </h3>
                            </div>

                        </div>



                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
