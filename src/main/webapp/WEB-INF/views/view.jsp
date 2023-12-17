<%@ page import="com.book.BookDAO" %>
<%@ page import="com.book.BookVO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/2/2023
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Title</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 20px;
            text-align: center;
        }

        .board_view p {
            margin: 0;
            padding: 5px;
        }

    </style>
</head>
<body>
<%
    Object loginInfo = session.getAttribute("login");

    // 로그인 정보가 없다면 로그인 페이지로 리다이렉션
    if (loginInfo == null) {
        response.sendRedirect(request.getContextPath() + "/");
        //response.sendRedirect("redirect:/");
        return;
    }
%>
<h2 class="pb-2 border-bottom">MJWJ Library Rent Service</h2>
<div class="px-4 py-5 my-5 text-center">
    <h1 class="display-5 fw-bold text-body-emphasis">${selectedPost.seq}. ${selectedPost.title}</h1>
    <div class="col-lg-6 mx-auto">
        <p class="lead mb-4">저자: ${selectedPost.writer}</p>
        <p class="lead mb-4">카테고리: ${selectedPost.category}</p>
        <p class="lead mb-4">출판사: ${selectedPost.publisher}</p>
        <p class="lead mb-4">대여여부: ${selectedPost.rentok}</p>
        <button class="btn btn-primary btn-lg" type="button" onclick="location.href='../list'">목록보기</button>
    </div>
</div>

</body>
</html>
