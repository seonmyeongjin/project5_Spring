<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/2/2023
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Title</title>
    <style>
        body{
            text-align: center;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #4caf50;
            color: white;
        }
        .fa-trash{
            font-size: 20px;
        }
        .fa-pen-to-square{
            font-size: 20px;
        }
        a {
            color: black;
            text-decoration: none;
        }
    </style>
    <title>Title</title>
</head>
<body>
<header data-bs-theme="dark">
    <div class="collapse text-bg-dark" id="navbarHeader">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-7 py-4">
                    <h4>About</h4>
                    <p class="text-body-secondary">도서명, 저자, 카테고리, 출판사, 대여날짜, 반납날짜에 대한 정보를 제공합니다.</p>
                </div>
                <div class="col-sm-4 offset-md-1 py-4">
                    <h4>Contact</h4>
                    <ul class="list-unstyled">
                        <li>선명진 smj22200376@handong.ac.kr</li>
                        <li>설원준 qiops@handong.ac.kr</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="#" class="navbar-brand d-flex align-items-center">
                <strong>MJWJ</strong>
            </a>
        </div>
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                    <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
                </a>

                <div class="text-end">
                    <button type="button" class="btn btn-secondary" onclick="location.href='../logout'" style="margin-right: 20px">logout</button>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="px-4 py-5 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="../img/img_1.png" alt="" width="100" height="100">
    <h1 class="display-5 fw-bold text-body-emphasis">MJWJ Library Rent Service</h1>
    <div class="col-lg-6 mx-auto">
        <p class="lead mb-4">MJWJ 도서관에 오신 걸 환영합니다. 원하시는 책이 대여중인지 확인해보세요.</p>
    </div>
</div>
<div class="bd-example-snippet bd-code-snippet"><div class="bd-example m-0 border-0">
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">제목</th>
            <th scope="col">저자</th>
            <th scope="col">종류</th>
            <th scope="col">출판사</th>
            <th scope="col">대여여부</th>
            <th scope="col">isbn</th>
            <th scope="col">대여날짜</th>
            <th scope="col">반납날짜</th>
            <th scope="col">수정</th>
            <th scope="col">삭제</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="u">
            <tr>
                <th scope="row"><a href="view/${u.seq}">${u.seq}</a></th>
                <td><a href="view/${u.seq}">${u.title}</a></td>
                <td><a href="view/${u.seq}">${u.writer}</a></td>
                <td><a href="view/${u.seq}">${u.category}</a></td>
                <td><a href="view/${u.seq}">${u.publisher}</a></td>
                <td><a href="view/${u.seq}">${u.rentok}</a></td>
                <td><a href="view/${u.seq}">${u.isbn}</a></td>
                <td><a href="view/${u.seq}">${u.regdate}</a></td>
                <td><a href="view/${u.seq}">${u.getRetdate()}</a></td>
                <td><a href="editpost/${u.seq}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                <td><a href="javascript:delete_ok(${u.seq})"><i class="fa-solid fa-trash"></i></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div></div>
<button type="button" class="btn btn-secondary" onclick="location.href='add'">책 등록하기</button>
<footer class="text-body-secondary py-5">
    <div class="container">
        <p class="float-end mb-1">
        </p>
        <p class="mb-1">Thank You, Visit MJWJ Library</p>
    </div>
</footer>


<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='delete/'+id;
    }
</script>
</body>
</html>
