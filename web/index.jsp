<%-- 
    Document   : index.jsp
    Created on : Mar 12, 2024, 8:12:54 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="id" class="dao.CourseDAO" />



        <div class="container mt-5">
            <h1 class="text-center mb-5">List Course</h1>

            <table class="table " >
                <thead>
                <th scope="col">ID Course</th>
                <th scope="col">Subject</th>
                <th scope="col">Lecture Name</th>
                <th scope="col">credits</th>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${id.list}">
                        <tr>
                            <td>${product.course}</td>
                            <td>${product.subject}</td>
                            <td>${product.lecture}</td>
                            <td>${product.creadits}</td>
                   
                        </tr>
                    </c:forEach>

                </tbody> 

            </table>      
        </div>


    </body>
</html>
