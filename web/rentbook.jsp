<%-- 
    Document   : listbook
    Created on : Feb 28, 2024, 1:13:33 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>
        <link rel="stylesheet" href="asset/css/reset.css" />
        <link rel="stylesheet" href="asset/css/renderlist.css" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">

    </head>
    <body>
        <div class="popular" style="position: relative;">
            <div class="content">
                <div class="header-popular">
                    <div class="title-block">
                        <h2 class="title ">Book Storage</h2>
                        <p class="desc">
                            Build new skills with new trendy courses and
                            shine for the next future career.
                        </p>
                    </div>
                    <div>
                        <a href="home.jsp" class="btn--news">
                            <span>Back Home</span>
                        </a>
                        <div class="ul-sort">
                            <ul>
                                <li><a href="sortbook?action=az">Sort by A->Z</a></li>
                                <li><a href="sortbook?action=za">Sort by Z->A</a></li>
                                <li><a href="sortbook?action=ry">Sort by recent year </a></li>
                                <li><a href="sortbook?action=fu">Sort by year further </a></li>

                            </ul>
                        </div>

                    </div>

                </div>
                <form class="form--search" method="get" action="search" >
                    <input autocomplete="off" class="input" class="input--search" name="bookname" placeholder="Book name" type="search">
                    <input autocomplete="off" class="input" class="inpur--search" name="author" placeholder="Author name" type="search">
                    <button class="button--search">
                        <span class="span">🔎</span>
                    </button>
                </form>


                <c:if test="${noticesamebook ==false}">
                    <h2 style="color: red; text-align: center;margin-top: 55px">You already have this book in favorite book list.</h2>
                </c:if> 
                <c:if test="${noticesamebook ==true}">
                    <h2 style="color: green; text-align: center;margin-top: 55px">Successfully</h2>
                </c:if> 
                <div class="body">
                    <c:forEach var="pb" items="${listbook}"> 
                        <c:if test="${pb.count ==0}">
                            <div class="item outofstock">
                                <a href="#!">
                                    <img
                                        src="./img-prj/${pb.img}"
                                        alt="item1"
                                        class="img-popular"
                                        />
                                </a>
                                <div class="info">
                                    <div class="row">
                                        <h3 class="title-item line-clamp"><a href="#!">${pb.name}</a></h3>
                                        <div class="rates">
                                            <p class="desc-popular line-clamp line-2">
                                                ${pb.category.name}
                                            </p>
                                        </div>
                                    </div>
                                    <p class="desc-popular line-clamp line-2">
                                        ${pb.publisher.name}
                                    </p>
                                    <div class="row row-price">
                                        <strong class="price">${pb.author}</strong>
                                        <h3 class="title-item line-clamp"><a href="#!">${pb.yearDate}</a></h3>
                                    </div>
                                </div>

                                <div class="icon--list">
                                    <a href="notfound.jsp"><i style="font-size: 18px;color: red" class="fa fa-exclamation-circle"></i></a>
                                    <a href="favorite"><i class="fa-solid fa-heart"></i></a>

                                </div>
                                <p class="amount-book" style="float: right; color: red">This product is temporarily out of stock</p>  

                            </div>


                        </c:if>
                        <c:if test="${pb.count>0}">
                            <div class="item">
                                <a href="#!">
                                    <img
                                        src="./img-prj/${pb.img}"
                                        alt="item1"
                                        class="img-popular"
                                        />
                                </a>
                                <div class="info">
                                    <div class="row">
                                        <h3 class="title-item line-clamp"><a href="#!">${pb.name}</a></h3>
                                        <div class="rates">
                                            <p class="desc-popular line-clamp line-2">
                                                ${pb.category.name}
                                            </p>
                                        </div>
                                    </div>
                                    <p class="desc-popular line-clamp line-2">
                                        ${pb.publisher.name}
                                    </p>
                                    <div class="row row-price">
                                        <strong class="price">${pb.author}</strong>
                                        <h3 class="title-item line-clamp" style="font-size: 1.5rem;"><a href="#!">${pb.yearDate}</a></h3>
                                    </div>
                                </div>

                                <div class="icon--list">
                                    <a href="addtocart?id=${pb.idBook}"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="favorite?id=${pb.idBook}"><i class="fa-solid fa-heart"></i></a>

                                </div>


                                <p class="amount-book" style="float: right">${pb.count} book left</p>  

                            </div>
                        </c:if>

                    </c:forEach>



                </div>


            </div>
            <jsp:useBean id="pagenum" class="dao.BookDAO" /> 

            <div style="text-align: center; margin-top: 50px; " class="sticky--page" >
                <c:forEach begin="1" end="${pagenum.pageNumber}" var="i"> 
                    <a style="padding: 18px;     margin-top: 16px;
                       font-weight: 400;
                       font-size: 1.8rem;
                       color: #5f5b53;" class="hover--page" href="numpage?id=${i}">${i}</a>
                </c:forEach>
            </div>

    </body>    
</html>
