<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
-->
<html>
    <head>
        <title>92Lib</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="asset/css/reset.css" />
        <link rel="stylesheet" href="asset/css/erorr.css" />
    </head>
    <body>
        <section class="page_404">
            <div class="container">
                <div class="row">	
                    <div class="col-sm-12 ">
                        <div class="col-sm-10 col-sm-offset-1  text-center">
                            <div class="four_zero_four_bg">


                                <div class="contant_box_404">
                                    <h3 class="h2">
                                        Look like you're lost
                                    </h3>

                                    <p>the page you are looking for not avaible!</p>
                                    <c:if test = "${sessionScope.manageraccount !=null}">
                                        <a href="managerview.jsp" class="link_404">Go to Home</a>
                                    </c:if>

                                    <c:if test = "${sessionScope.account !=null}">
                                        <a href="home.jsp" class="link_404">Go to Home</a>
                                    </c:if>

                                    <c:if test = "${sessionScope.account ==null && sessionScope.manageraccount ==null}">
                                        <a href="index.html" class="link_404">Go to Home</a>
                                    </c:if>

                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
