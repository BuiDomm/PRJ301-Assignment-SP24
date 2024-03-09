<%-- 
    Document   : addnewbook
    Created on : Feb 27, 2024, 11:26:28 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>92 Library</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">
        <link rel="stylesheet" href="asset/css/olala.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    </head>
    <body>
        <div class="container ">
            <a href="managerview.jsp" class="heading--content-back"><i class="fa-solid fa-arrow-left"></i> Back</a>
            <div style="margin-top: 130px;">
                <ul style="list-style: none ; display: flex; flex-direction: column; gap: 15px 0">


                </ul>

            </div>
            <div style="margin-left: 50%; transform: translateX(-50%);">
                <h1 class="text-center" style="margin-left:-137px">ADD NEW PUBLISHER</h1>
                <form action="publisher" method="post" class="form">

                    <div class="d-flex">
                        <div >
                            <label for="name">Publisher Name</label>
                            <input  name="publisher" type="text" class="form-control" placeholder="Publisher Name Name..."/>
                        </div>

                        <div>
                            <label for="name" style="display: block"> </label>
                            <button style="padding: 6px;width:200px; margin-left: 80px;margin-top: 24px" class="btn bg-primary" type="submit">Create</button>
                        </div>



                    </div>


                </form>


            </div>
        </div>
    </body>
</html>
