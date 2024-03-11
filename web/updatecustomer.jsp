<%-- 
    Document   : UpdateCustomer
    Created on : Mar 11, 2024, 8:27:23 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>
        <link rel="stylesheet" href="asset/css/updatecustomer.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">


    </head>

    <jsp:include page="include/headercustomer.jsp"></jsp:include>
        <body>
            <div class="container">
                <div class="heading" style="margin-left: 90px">
                    <figure style="width: 150px; height: 150px; border-radius: 50%">
                    <%
                         int randomNumber = (int) (Math.random() * 6) + 1;
                    %>
                    <img src="./img/user<%= randomNumber %>.jpg" alt="" class="img--user" style="width: 100%; object-fit: cover;border-radius: 50%;height: 100%">

                </figure>

            </div>
            <form class="form" action="updatecustomer" method="post">
                <input hidden="true" value="${customerold.idCustomer}" name="customerID"/>

                <input
                    placeholder="Username"
                    id="email"
                    name="username"
                    type="text"
                    class="input"   
                    readonly="true"
                    value="${customerold.username}"
                    style="pointer-events: none;color: #ccc"

                    />

                <div style="position: relative">
                    <input
                        placeholder="Password"
                        id="myInput"
                        name="password"
                        type="password"
                        class="input"
                        required=""  
                        value="${customerold.password}
                        "

                        />
                    <input type="radio" onclick="myFunction()"  style="position: absolute; right: 20px; top: 27px; " <i class="fa-solid fa-eye" ></i>
                </div>
                <input
                    placeholder="E-mail"
                    id="email"
                    name="email"
                    type="email"
                    class="input"
                    readonly="true"
                    value="${customerold.email}"
                    style="pointer-events: none;color: #ccc"

                    />
                <input
                    placeholder="FirstName"
                    id="password"
                    name="firstName"
                    type="text"
                    class="input"
                    required=""
                    value="${customerold.firstName}"

                    />

                <input
                    placeholder="Surname"
                    id="password"
                    name="surname"
                    type="text"
                    class="input"
                    required=""
                    value="${customerold.surname}"

                    />
                <input
                    placeholder="Phonenumber"
                    id="password"
                    name="phonenumber"
                    type="text"
                    class="input"
                    required=""
                    value="${customerold.phoneNumber}"

                    />
                <input  value="Update" type="submit" class="login-button"  />
            </form>

        </div>
        <script>
            function myFunction() {
                var x = document.getElementById("myInput");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }

        </script>

    </body>
</html>
