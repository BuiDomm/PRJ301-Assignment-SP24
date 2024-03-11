<%-- 
    Document   : ManagerView
    Created on : Feb 27, 2024, 10:27:50 PM
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
        <link rel="stylesheet" href="asset/css/managerview.css" />
        <link rel="stylesheet" href="asset/css/logoutin.css" />
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
                            <a class="navbar--fonts" href="blog.jsp">Blog</a>
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

        <div class="main--app main--app-v">

            <div class="content">
                <div class="main--app_body">
                    <article class="left--main">
                        <p class="sub__main--desc">Digital Smart Library</p>
                        <h1 class="main--title">
                            Digital
                            <span class="main--highlight">Library</span> For
                            Everyone.
                        </h1>
                        <p class="main--desc">
                            We put together everything needed to build a website and app to make it possible for people to borrow and return books globally. We are the best platform.
                        </p>

                        <p class="legit--email">
                            *Reading book now in hear.
                        </p>

                        <div>
                            <button class="btn btn--featutes">
                                <span>Get Started</span>
                            </button>
                        </div>
                    </article>
                    <article class="right--main">
                        <h2 class="main--title main--title-v"> My Features <span class="main--highlight">92Lib</span> </h2>
                        <ul class="features-list features-list-v">
                            <a href="book?action=show" class="feature-item-v"> <li class="feature-item ">List of available books</li></a>
                            <a href="book?action=add" class="feature-item-v"> <li class="feature-item ">Add new book</li></a>
                            <a href="publisher?action=add" class="feature-item-v"> <li class="feature-item ">Add new Publisher</li></a>
                            <a href="publisher?action=show" class="feature-item-v"> <li class="feature-item ">List of Publisher</li></a>

                        </ul>
                    </article>
                </div>
            </div>

        </div>    

    </body>
</html>
