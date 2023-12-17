<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/5/2023
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        img, label { display:inline-block;}
        label{ width:130px}
        button{ background-color:blue; color:white;font-size:15px}
    </style>
</head>
<body>
<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
        <div class="col-lg-7 text-center text-lg-start">
            <h1 class="display-4 fw-bold lh-1 text-body-emphasis mb-3">MJWJ LIBRARY</h1>
            <p class="col-lg-10 fs-4">Welcome to the MJWJ library. If you want to visit the site, please log in. This site provides rental services.</p>
        </div>
        <div class="col-md-10 mx-auto col-lg-5">
            <form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" method="post" action="loginOk">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" name='userid'>
                    <label for="floatingInput">Id</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name='password'>
                    <label for="floatingPassword">Password</label>
                </div>
                <button class="w-100 btn btn-dark" type="submit">login</button>
                <hr class="my-4">
                <small class="text-body-secondary">By clicking Login, you can use our rent service.</small>
            </form>
        </div>
    </div>
</div>

</body>
</html>
