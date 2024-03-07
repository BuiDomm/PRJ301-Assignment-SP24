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
    </head>
    <body>
        <div class="container ">
            <div style="margin-left: 50%; transform: translateX(-50%);">
                <h1 class="text-center" style="margin-left:-137px">ADD NEW BOOK</h1>
                <form action="book" method="post" class="form">
                    <div class="d-flex">
                        <div ">
                            <label for="namebook">Book Name </label>
                            <input  name="namebook" type="text" class="form-control" placeholder="Enter name of Book"/>
                        </div>
                        <div style="margin-left: 20px;">
                            <label for="publishername">Publisher Name </label>
                            <select name="publisherid" class="form-control">
                                <option selected disabled="true">Choose Publisher</option>
                                <c:forEach var="pb" items="${dataPub}"> 
                                    <option value="${pb.idPublisher}">${pb.name}</option>
                                </c:forEach>
                            </select>

                        </div>
                    </div>

                    <div class="d-flex">
                        <div >
                            <label for="name">Author Name </label>
                            <input  name="authorname" type="text" class="form-control" placeholder="Enter name of author"/>
                        </div>
                        <div style="margin-left: 20px;">
                            <label for="category">Category</label>
                            <select name="categoryid" class="form-control">
                                <option selected disabled="true">Choose Category</option>
                                <c:forEach var="c" items="${dataCate}"> 
                                    <option value="${c.idCategory}">${c.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="d-flex">
                        <div ">
                            <label for="name">Quantity</label>
                            <input  name="quantity" type="text" class="form-control" placeholder="Quantity"/>
                        </div>
                        <div style="margin-left: 20px;">
                            <div >
                                <label for="yearpublisher">Year Publisher </label>
                                <input  name="yearpublisher" type="number" class="form-control" placeholder="Enter year publisher" min="=1999" max="2024" step="1"/>
                            </div>

                        </div>
                    </div>




                    <div class="d-flex">
                        <div style="width: 30%" >
                            <label for="price">Image book </label>
                            <input name="img" type="file">

                        </div>

                        <div >
                            <label for="/"></label>
                            <br>
                            <button style="padding: 6px;width:200px; margin-left: 80px;" class="btn bg-primary" type="submit">Create</button>

                        </div>

                    </div>


                </form>

            </div>
        </div>
    </body>
</html>
