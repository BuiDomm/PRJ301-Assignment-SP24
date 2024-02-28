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
        <title>JSP Page</title>
        <link rel="stylesheet" href="asset/css/reset.css" />
        <link rel="stylesheet" href="asset/css/renderlist.css" />
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

        </div>
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
                </div>




            </c:forEach>


        </div>
    </div>


</body>
</html>
