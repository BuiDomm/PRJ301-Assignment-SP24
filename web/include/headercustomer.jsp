<%-- 
    Document   : headercustomer
    Created on : Mar 11, 2024, 10:05:12 PM
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
                            <a class="navbar--fonts" href="bookrent">Mybook</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="customerbook">Product</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="home.jsp">Home</a>
                        </li>
                        <li class="navbar--item">
                            <a class="navbar--fonts" href="blog.jsp">Blog</a>
                        </li>
                    </ul>

              
                </div>
            </div>
        </header>
    </body>
</html>
