<%-- 
    Document   : register
    Created on : Jan 22, 2024, 12:16:52 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="/asset/css/reset.css"/>
        <link rel="stylesheet" href="/asset/css/register.css"/>
    </head>
    <body>
        <div class="main">

            <div class="right">
                <h2 class="title-bank">celobank</h2>

                <p class="desc-bank">Celobank sẽ giúp bạn quản lý và phân bố tài sản một cách hợp lý, chúng tôi cam kết sẽ đem lại lợi nhuận mà không lỗ.</p>

            </div>
            <form class="form">
                <p class="title">Register </p>
                <p class="message">Signup now and get full access to our app. </p>
                <div class="flex">
                    <label>
                        <input class="input" type="text" placeholder="" required="">
                        <span>Firstname</span>
                    </label>

                    <label>
                        <input class="input" type="text" placeholder="" required="" style=" width: 75%;">
                        <span>Lastname</span>
                    </label>
                </div>  

                <label>
                    <input class="input" type="email" placeholder="" required="">
                    <span>Email</span>
                </label> 

                <label>
                    <input class="input" type="password" placeholder="" required="">
                    <span>Password</span>
                </label>
                <label>
                    <input class="input" type="password" placeholder="" required="">
                    <span>Confirm password</span>
                </label>
                <button class="submit">Submit</button>
                <p class="signin">Already have an acount ? <a href="loginForm.jsp">Signin</a> </p>
            </form>
        </div>
    </body>
</html>
