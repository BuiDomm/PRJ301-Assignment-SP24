<%-- 
    Document   : cartlist
    Created on : Mar 2, 2024, 3:09:51 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<link rel="stylesheet" href="asset/css/reset.css" />
<link rel="stylesheet" href="asset/css/cart.css" />
<link rel="stylesheet" href="asset/css/styles.css" />

<link rel ="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                            <a class="navbar--fonts" href="home.jsp">Home</a>
                        </li>

                        <li class="navbar--item">
                            <a class="navbar--fonts" href="customerbook">Go Library</a>
                        </li>
                    </ul>

                </div>
            </div>
        </header>
        <c:if test="${empty sessionScope.checkout.list}">
            <figure class="empty--block--img">
                <img src="./img/empty.jpg" class="empty--img"/>
            </figure>
        <figcaption> 
            <p class="empty--block--img empty-cap quotes--content"> Oops ~_~ You haven't book in the cart.</p>      
            <figcaption>
        </c:if>

        <c:if test="${not empty sessionScope.checkout.list}">
            <c:forEach var="c" items="${sessionScope.checkout.list}">



                <form class="process_bottom" action="addorder">

                    <div class="process__list-item">
                        <div class="process__item ">
                            <div class="process__row">
                                <figure class="img-list-cart">
                                    <img src="./img-prj/${c.book.img}"  class="process__row__number"/>

                                </figure>
                                <h3 class="process__row__title">${c.book.name}</h3>
                                <div> 
                                    <h2 class="process__row__desc"> Category: ${c.book.category.name}</h2>
                                    <h2 class="process__row__desc">Publisher: ${c.book.publisher.name} </h2>
                                </div>

                                <div><a href="deleteitem?id=${c.idItem}"> <i class="fa-solid fa-trash icon-fix"></i></a>  </div>
                            </div> 
                            <a href="#!" class="process__item__learnMore">Learn More</a>
                            <figure class="process__block-img">
                                <img src="./assets/img/process-img.png" alt="" class="process__img">
                            </figure>
                            <div class="process__hr"></div>
                        </div>
                    </c:forEach>
                    <button type="submit" class="btn--news btn--news-submit">
                        <span>Rent Book</span>
                    </button>   
                </div>


            </form>
        </c:if>
    </body>
</html>
