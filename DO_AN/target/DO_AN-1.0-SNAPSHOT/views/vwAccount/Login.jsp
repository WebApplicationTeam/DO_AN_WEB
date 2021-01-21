<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Web Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            height: 100%;
            background-image: url("https://wallpapercave.com/wp/wp2761418.gif");
            background-repeat: no-repeat;
            background-size: cover;

        }
        .login{
            height: 500px;
            border: 2px solid black;
            display: flex;
            justify-content: center;
            align-items: center;

            border-radius: 10px;
            box-shadow: 0 2px 30px rgba(0,0,0,1);
            background: rgba(0,0.9,0.5,0.1);
        }
        .text1{
            display: flex;
            justify-content: center;
            margin-top: auto;
            color: white;
        }

    </style>
</head>
<body>
<div class="container-fluid h-100">
    <div class="row h-100 justify-content-center align-items-center">
        <div class="col-sm-4">
            <c:if test="${hasError}">
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <strong>Login failed!</strong> ${errorMessage}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </c:if>
            <div class="login">

                <form method="post">
                    <h3 class="text1">LOGIN</h3>
                    <div class="form-group">
                        <div class="input-group">
                            <input class="form-control form-control-lg border-right-0 border" placeholder="User name" type="text" name="username" autofocus>
                            <span class="input-group-append">
                <div class="input-group-text bg-white">
                  <i class="fa fa-user" aria-hidden="true"></i>
                </div>
              </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input class="form-control form-control-lg border-right-0 border" placeholder="Password" type="password" name="password">
                            <span class="input-group-append">
                <div class="input-group-text bg-white">
                  <i class="fa fa-key" aria-hidden="true"></i>
                </div>
              </span>
                        </div>
                    </div>
                    <div class="form-group d-flex">
                        <div>
                            <a class="btn btn-lg btn-outline-info btn-block" href="${pageContext.request.contextPath}/Home" role="button">
                                <i class="fa fa-home" aria-hidden="true"></i>
                                Home
                            </a>
                        </div>
                        <div class="flex-fill ml-1">
                            <button type="submit" class="btn btn-lg btn-info btn-block">
                                <i class="fa fa-sign-in" aria-hidden="true"></i>
                                Sign In
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
