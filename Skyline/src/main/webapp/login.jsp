<%--
  Created by IntelliJ IDEA.
  User: Taoufik
  Date: 5/23/2024
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="tailwind/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="tailwind/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="tailwind/css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="tailwind/css/iofrm-theme6.css">
    <title>Login |</title>
</head>
<body>
<div class="form-body">
    <div class="website-logo">
        <a href="index.html">
            <div class="logo">
                <img class="logo-size" src="images/logo-light.svg" alt="">
            </div>
        </a>
    </div>
    <div class="row">
        <div class="img-holder">
            <div class="bg"></div>
            <div class="info-holder">
                <img src="images/graphic2.svg" alt="">
            </div>
        </div>
        <div class="form-holder">
            <div class="form-content">
                <div class="form-items">
                    <h3>Welcome to Our Construction Platform</h3>
                    <div class="page-links">
                        <a href="login6.html" class="active">Login</a><a href="resgister.html">Register</a>
                    </div>
                    <form method="get" action="checker">
                        <input class="form-control" type="text" name="username" placeholder="UserName" required>
                        <input class="form-control" type="password" name="password" placeholder="Password" required>
                        <div class="form-button">
                            <button id="submit" type="submit" class="ibtn">Login</button> <a href="forget6.html">Forget password?</a>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
