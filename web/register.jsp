

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>
        <link rel="stylesheet" href="asset/css/reset.css"/>
        <link rel="stylesheet" href="asset/css/register.css"/>
                <link rel="stylesheet" href="asset/css/styles.css" />

        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">
    </head>
    <body>
        <jsp:include page="include/headerlogin.jsp"></jsp:include>
        <div class="main">

            <div class="right">
                <h2 class="title-bank">92Lib</h2>

                <p class="desc-bank">Not to say much, this library is the best in the universe, the best in the galaxy, the best on this planet and the best of the best.</p>

            </div>
            <form class="form" action="register" method="post" > 
                <p class="title">Register </p>
                <p class="message">Signup now and get full access to our app. </p>
                <div class="flex">
                    <label>
                        <input autocomplete="off" class="input" type="text" placeholder="" required="" name="firstname">
                        <span>Firstname</span>
                    </label>

                    <label>
                        <input autocomplete="off" class="input" type="text" placeholder="" required="" style=" width: 75%;" name="lastname">
                        <span>Lastname</span>
                    </label>
                </div>  

                <label>
                    <input autocomplete="off" class="input" type="text" placeholder="" required="" name="username">
                    <span>Username</span>
                </label> 

                <label>
                    <input autocomplete="off" class="input" type="password" placeholder="" required="" name="password">
                    <span>Password</span>
                </label>
                <label>
                    <input autocomplete="off" class="input" type="email" placeholder="" required="" name="email">
                    <span>Email</span>
                </label>
                <label>
                    <input autocomplete="off" class="input" type="number" placeholder="" required="" name="phone">
                    <span>Phone</span>
                </label>
                <button class="submit">Submit</button>
                <h2 class="Notification"></h2>

                <p class="signin">Already have an acount ? <a href="loginForm.jsp">Signin</a> </p>
            </form>
        </div>
    </body>
</html>
