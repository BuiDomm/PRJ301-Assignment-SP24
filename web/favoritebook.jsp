<%-- 
    Document   : favoritebook
    Created on : Mar 16, 2024, 5:46:57 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="notfound.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>
        <link rel="stylesheet" href="./asset/css/favorite.css" />
        <link rel="stylesheet" href="./asset/css/listpublisher.css" />


    </head>
    <body>
        <style>
            .title-hot:hover .iconn {
                transform: translateX(-25%);
            }

        </style>

        <h2 style="display: inline-block;
            margin-top: 1.2rem;
            margin-left :30px;
            color: blue;
            font-family: Open Sans;
            font-size: 1.6rem;
            font-weight: 500;
            " class="title-hot"><i class="iconn fa-solid fa-arrow-left"></i><a href="bookrent" style="text-decoration: none; color: blue">Back</a></h2>
        <article>
            <h1 style="text-align: center">Favorite Book List</h1>
            <h2 style="color: green; text-align: center">${delteS}</h2>

            <dl>
                <c:forEach items="${listfavoritebook}" var="item" >
                    <div class="item--favorite" style="display: flex; border-radius: 10px">
                        <div  style="width: 25%;height: 95%">
                            <img src="./img-prj/${item.img}" alt="alt" style="height: 100%;width: 100%; object-fit: cover"/>
                        </div>
                        <div  style="margin-top: 25px;">
                            <dt style="margin-left: 15px;padding-bottom: 10px; font-size: 20px">${item.name}</dt>
                            <dd style="margin-left: 15px">${item.author}</dd>
                            <a class="card-icon" href="deletefavorite?id=${item.idBook}"><i class="fa-solid fa-trash"></i></a>
                        </div>
                    </div>

                </c:forEach>

            </dl>
        </article>
    </body>
</html>
