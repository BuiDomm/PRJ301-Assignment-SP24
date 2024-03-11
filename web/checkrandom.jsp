<%-- 
    Document   : fogort
    Created on : Mar 9, 2024, 5:59:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="asset/css/fogort.css" />
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">

        <title>92 Library</title>
    </head>
    <body>
        <div class="container-box">
            <form method="get" action="checknum">
                <p class="logo">92 Library</p>
                <input name="oldcus" value="${oldCustomer.idCustomer}" hidden="true">
                <input name="numberrandom" value="${numberRandom}" hidden="true">
                <input type="number" placeholder="Verifi code...." required="" name="numbercheck">

                <button class="login">Submit</button>
                <hr>
            </form>

        </div>
    </body>
</html>
