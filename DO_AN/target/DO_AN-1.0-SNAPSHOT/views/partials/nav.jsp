<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="authUser" scope="session" type="beans.User"/>

<style>
    @media (min-width: 992px){
        .dropdown-menu .dropdown-toggle:after {
            border-top: .3em solid transparent;
            border-right: 0;
            border-bottom: .3em solid transparent;
            border-left: .3em solid;

        }
        .dropdown-menu .dropdown-menu{
            margin-left:0; margin-right: 0;

        }
        .dropdown-menu li{
            position: relative;
        }
        .nav-item .submenu{
            display: none;
            position: absolute;
            left:100%; top:-7px;
        }
        .nav-item .submenu-left{
            right:100%; left:auto;
        }
        .dropdown-menu > li:hover{ background-color: #f1f1f1 }
        .dropdown-menu > li:hover > .submenu{
            display: block;
        }
        .dropdown-item{
            width: 200px;
        }
    }
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow sticky-top">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/Home">
        UDEMY
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>



    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li> <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Categories</a>
            <ul class="dropdown-menu" style="border: none; background-color: transparent">
                <li>
                    <a class="dropdown-item" href="#">
                        <c:forEach var="c" items="${category}">
                        <a href="${pageContext.request.contextPath}/Course/ByCat?id=${c.cat_id}" class="list-group-item list-group-item-action">
                                ${c.cat_name}
                        </a>
                        </c:forEach>
                    </a>
                    <ul class="submenu dropdown-menu mt-3">
                        <li><a class="dropdown-item" href="#"> All... </a></li>
                        <li><a class="dropdown-item" href="#"> WordPress Website </a></li>
                        <li><a class="dropdown-item" href="#"> Website Design </a></li>
                        <li><a class="dropdown-item" href="#"> Open Source </a></li>
                        <li><a class="dropdown-item" href="#"> Custom CMS </a></li>
                    </ul>
                </li>
            </ul>
        </li>

            <li>
                <form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/Course/Search">
                    <div class="form-inline my-2 my-lg-0 d-flex justify-content-between" style="border: teal solid 2px; border-radius: 25px" style="width: 180%">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search"  style="border: none;border-radius: 25px;background-color: transparent" id="txtSearch" name ="search">
                        <button class="btn  my-2 my-sm-0" type="submit" style="border: none">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                    </div>
                </form>
            </li>
        </ul>
            <%--<form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                <i class="fa fa-search" aria-hidden="true"></i>
                Search
              </button>
            </form>--%>
        <ul class="navbar-nav">
            <c:choose>
                <c:when test="${auth}">
                    <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Hi, <b>${authUser.name}</b>!
                        </a>




                        <c:choose>
                            <c:when test="${authUser.permission==0}">
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile?id=${authUser.id}">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Profile
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile?id=${authUser.id}">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    Change Password
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="javascript: $('#frmLogout').submit();">
                                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                                        Logout
                                    </a>
                                </div>
                            </c:when>
                            <c:when test="${authUser.permission==1}">

                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile?id=${authUser.id}">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Course Manager
                                    </a>

                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile?id=${authUser.id}">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Change Password
                                    </a>

                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile?id=${authUser.id}">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Profile
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="javascript: $('#frmLogout').submit();">
                                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                                        Logout
                                    </a>
                                </div>

                            </c:when>
                            <c:otherwise>

                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Admin/TeacherManager/">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Teacher Magager
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Admin/StudentManager/">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Student Manger
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Admin/Category/">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Category Manager
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Admin/Course/">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Course Manager
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile?id=${authUser.id}">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Profile
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="javascript: $('#frmLogout').submit();">
                                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                                        Logout
                                    </a>
                                </div>

                            </c:otherwise>
                        </c:choose>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Account/Register">
                            <i class="fa fa-user-plus" aria-hidden="true"></i>
                            Register
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Account/Login">
                            <i class="fa fa-sign-in" aria-hidden="true"></i>
                            Login
                        </a>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</nav>