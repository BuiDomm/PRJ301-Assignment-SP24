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

        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-box">
            <form method="post" action="changlepass">
                <p class="logo">92 Library</p>

                <input name="idUser" value="${oldcustomer.idCustomer}" hidden="true">
                <p style="font-size: 13px;text-align: center;color: #696d76;">* Please input new password in here!!</p>
                <input type="password" placeholder="New password" required="" name="password1">
                <input type="password" placeholder="Confirm new password" required="" name="password2">
                <h2 style="font-size: 13px; padding: 0; margin: 0;color: red;margin-bottom: 5px">${requestScope.errorMessage}</h2>

                <button class="login">Submit</button>
                <hr>
            </form>

        </div>
    </body>
</html>
