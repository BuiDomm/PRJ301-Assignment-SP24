<%-- 
    Document   : listpublisher
    Created on : Mar 8, 2024, 11:58:01 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">
        <link rel="stylesheet" href="asset/css/reset.css" />
        <link rel="stylesheet" href="asset/css/listpublisher.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    </head>


    <body>

        <a href="managerview.jsp" style="
           display:inline-block;
           margin-top: 1.2rem;
           margin-right: 180px;
           color: blue;
           margin-left: 35px;
           font-family: Open Sans;
           font-size: 1.5rem;
           font-weight: 500;
           line-height: 1rem;""><i class="fa-solid fa-arrow-left"></i> Back</a>

        <div class="container">

            <div class="container--box">
                <c:forEach var="c" items="${sessionScope.listpublisher1}">
                    <div class="card">
                        <div class="card-img"></div>
                        <div class="card-info">
                            <div class="card-text">
                                <p class="text-title">${c.name}</p>
                                <p class="text-subtitle">This is a subtitle</p>
                            </div>

                            <a class="card-iconn" href="deletepublisher?idd=${c.idPublisher}"><i class="fa-solid fa-trash"></i></a>
                        </div>
                    </div>

                </c:forEach>

            </div>
            <h2 style="text-align: center; color: white; font-size: 18px; margin-top: 25px;">${meaggesa}</h2>

        </div>

    </body>
</html>
