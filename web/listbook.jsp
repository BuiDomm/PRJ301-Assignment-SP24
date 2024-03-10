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
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">

    </head>
    <body>
        <div class="popular">
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
                        <div>
                            <a href="managerview.jsp" class="btn--news btn--bgc">
                                <span>Back Home</span>
                            </a>


                        </div>

                        <a href="book?action=add" class="btn--news">
                            <span>Add book</span>
                        </a>

                    </div>

                </div>
                <form class="form--search" method="get" action="search" >
                    <input autocomplete="off" class="input" class="input--search" name="bookname" placeholder="Book name" type="search">
                    <input autocomplete="off" class="input" class="inpur--search" name="author" placeholder="Author name" type="search">
                    <button class="button--search">
                        <span class="span">🔎</span>
                    </button>
                </form>
                <div class="body">
                    <c:forEach var="pb" items="${listbook}"> 

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
                                    <h3 class="title-item line-clamp"><a href="#!">${pb.publisher.name}</a></h3>
                                </div>
                            </div>

                            <div class="icon--list">
                                <a href="update?id=${pb.idBook}"><i class="fa-regular fa-pen-to-square"></i></a>
                                <a href="#!" onclick=handlerDelete(${pb.idBook})> <i class ="fa-solid fa-eraser" ></i></a>

                            </div>
                        </div>

                    </c:forEach>


                </div>
            </div>

            <script>
                function handlerDelete(bookid) {
                    if (confirm("Do you want to delete " + bookid)) {
                        window.location.href = "delete?id=" + bookid;
                    }
                }



            </script>        
    </body>    
</html>
