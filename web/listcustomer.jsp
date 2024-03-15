

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">
        <link rel="stylesheet" href="asset/css/listcustomer.css" />
        <link rel="stylesheet" href="asset/css/owl.carousel.min.css" />
        <link rel="stylesheet" href="asset/fonts/icomoon/style.css />
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    </head>
    <jsp:include page="include/headermana.jsp" />
    <body>
        <div class="content">

            <div class="container">

                <div class="table-responsive">

                    <table class="table table-striped custom-table">
                        <thead>
                            <tr>

                                <th scope="col">ID Customer</th>
                                <th scope="col">Username</th>
                                <th scope="col">Password</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Surname</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone</th>
                                <th scope="col">
                                    <label class="custom-control ios-switch" style="position: relative; top: 10px;">
                                        <input type="checkbox" class="ios-switch-control-input js-ios-switch-all">
                                        <span class="ios-switch-control-indicator"></span>
                                    </label>
                                </th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${dsCustomer}" var="cus">
                                <tr scope="row" class="">
                                    <td style="margin-left: 30px; display: inline-block">
                                        ${cus.idCustomer}
                                    </td>
                                    <td class="pl-0">
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="name">${cus.username}</a>
                                        </div>
                                    </td>
                                    <td>
                                        ${cus.password}
                                    </td>
                                    <td>${cus.firstName}</td>
                                    <td>${cus.surname}</td>
                                    <td>${cus.email}</td>
                                    <td>${cus.phoneNumber}</td>

                                    <td>
                                        <label class="custom-control ios-switch">
                                            <input type="checkbox" class="ios-switch-control-input" checked=""  onclick="handleBlock(${cus.idCustomer})">
                                            <span class="ios-switch-control-indicator"></span>
                                        </label>
                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>

        </div>
<!--            <script>
            function handleBlock(id) {
                if (confirm("Do you want to block " + id)) {
                    window.location.href = "block?id=" + id;
                }
            }

        </script>-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="./js/main.js"></script>

    

    </body>
</html>
