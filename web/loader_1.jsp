<%-- 
    Document   : newjsp
    Created on : Feb 26, 2024, 9:49:53 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="asset/css/reset.css"/>
        <link rel="stylesheet" href="asset/css/loader.css"/>
    </head>
    <body>

        <div class="container--loader"> 
            <div class="loader"></div>
            <h2>Dìa dia, yêu cầu của bạn đang được xử lý... </h2>
            <h2>Vui lòng chờ trong giây chút :>> </h2>

        </div>

        <script>
            function redirectToAnotherPage() {
                setTimeout(function () {
                    window.location.href = 'home.jsp';
                }, 3000); // 5000 mili giây tương đương với 5 giây
            }

            // Gọi hàm khi trang được tải
            window.onload = redirectToAnotherPage;
        </script>
    </body>
</html>
