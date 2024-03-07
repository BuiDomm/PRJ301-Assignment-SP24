<%-- 
    Document   : detail
    Created on : Mar 8, 2024, 12:51:21 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="asset/css/reset.css" />
        <link rel="stylesheet" href="asset/css/cart.css" />
        <link rel="stylesheet" href="asset/css/styles.css" />

    </head>
    <body>

    </div>
    <div class="popup open-popup" id="popup" >
        <div class="list--bill">
            <div style="display: flex;align-items: center;  ">
                <a href="listbill.jsp" class="heading--content-back"><i class="fa-solid fa-arrow-left"></i> Back</a>
                <h2 class="heading--content-rightblock">Detail Bill</h2>

            </div>
            <c:forEach var="item" items="${sessionScope.listbookOrder}">
                <div class="item--bill">
                    <div class="left-bill">
                        <figure class="img--item--bill"> 
                            <img class="img--bill-item" src="./img-prj/${item.img}" alt="Hi"/>
                        </figure>
                    </div>
                    <div class="right--bill">
                        <div class="top-right--bil">
                            <h3 class="title--book title--item--content">${item.name}</h3>
                            <p class="desc--bookdetail"><i class="news--title">Describe: </i> "Inferno" by Dan Brown: Harvard professor Robert Langdon races against time to solve a puzzle rooted in Dante's epic poem, 
                                navigating a dangerous journey through historical art
                                and symbols.</p><!-- comment -->
                        </div>
                        <div class="left-right--bill">
                            <p><i class="news--title">Author: </i>${item.author}</p>
                            <p><i class="news--title">Category: </i>${item.category.name}</p>
                        </div>   

                    </div>
                </div>

            </c:forEach>
        </div>
        <button type="button" "><a href="listbill.jsp" style="    padding: 11px 306px;"> OK </a></button>

        <script>
            let popup = document.getElementById("popup");
            let alltab = document.getElementById("allTab");



            function closePopup() {
                popup.classList.remove("open-popup");
            }
        </script>
    </div>
</body>
</html>
