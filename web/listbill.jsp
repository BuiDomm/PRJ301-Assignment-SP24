<%-- 
    Document   : listbill
    Created on : Mar 3, 2024, 1:29:10 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
                    <a href="home.jsp" class="logo--action" onclick="scrollToTop()">
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
        <c:if test="${empty sessionScope.listBill}">
            <figure class="empty--block--img">
                <img src="./img/empty.jpg" class="empty--img"/>
            </figure>
        <figcaption> 
            <p class="empty--block--img empty-cap quotes--content"> Oops ~_~ You haven't book in the cart.</p>      
            <figcaption>
            </c:if>

            <c:if test="${not empty sessionScope.listBill}">
                <c:set var="countting" value="0" />

                <c:forEach var="c" items="${sessionScope.listBill}">

                    <c:set var="booleanValue" value="${c.isReturn}" />
                    <c:if test="${booleanValue}">
                        <c:set var="countting" value="${countting + 1 }" />

                        <form class="process_bottom" action="addorder">

                            <div class="process__list-item">
                                <div class="process__item ">
                                    <div class="process__row">
                                        <figure class="img-list-cart">
                                            <%
                              int randomNumber = (int) (Math.random() * 32) + 1;
                                            %>

                                            <img src="./img-prj/book<%= randomNumber %>.jpg"  class="process__row__number"/>

                                        </figure>
                                        <h3 class="process__row__title">${c.list[0].book.name}</h3>
                                        <div> 

                                            <h2 class="process__row__desc"> Amount: ${fn:length(c.list)}</h2>
                                            <h2 class="process__row__desc">
                                                Date of hire ${c.startTime} </h2>
                                        </div>

                                        <div><a href="refundbook?id=${c.idCheckout}"> <i class="fa-solid fa-rotate-left hero__watch-video__play"></i></a>  </div>
                                    </div> 
                                    <a href="#!" class="process__item__learnMore">Learn More</a>
                                    <figure class="process__block-img">
                                        <img src="./assets/img/process-img.png" alt="" class="process__img">
                                    </figure>
                                    <div class="process__hr"></div>
                                </div>
                            </c:if>

                        </c:forEach>
                 


                </form>
                <c:if test="${countting == 0}">
                    <figure class="empty--block--img">
                        <img src="./img/empty.jpg" class="empty--img"/>
                    </figure>
                    <figcaption> 
                        <p class="empty--block--img empty-cap quotes--content"> Oops ~_~ You haven't book in the cart.</p>      
                        <figcaption>

                        </c:if>

                    </c:if> 

                    <c:if test = "${countting != 0}">
                        <button type="submit" class="btn--news btn--news-submit">
                            <span>Hover me for fun bro</span>
                        </button>   

                    </c:if>       



                    <script>
                        function handleToReturn(idBill) {
                            if (confirm("Do you want to refund this order ? " + idBill)) {
                                window.location.href = "refundbook?id=" + idBill;
                            }
                        }


                    </script>   


                    </body>
                    </html>
