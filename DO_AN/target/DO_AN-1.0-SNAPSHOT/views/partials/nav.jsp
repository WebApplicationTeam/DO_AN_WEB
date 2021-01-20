<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="authUser" scope="session" type="beans.User"/>
<jsp:useBean id="category" scope="request" type="java.util.List<beans.Category>"/>

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
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Categories
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <c:forEach var="c" items="${category}">
                        <a href="#" class="list-group-item list-group-item-action">
                                ${c.cat_name}
                        </a>
                    </c:forEach>
                </div>

            </li>
            <li>
                <div class="form-inline my-2 my-lg-0">
                    <div class="form-inline my-2 my-lg-0 d-flex justify-content-between" style="border: teal solid 2px; border-radius: 25px" style="width: 180%">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search"  style="border: none;border-radius: 25px;background-color: transparent">
                        <button class="btn  my-2 my-sm-0" type="submit"style="border: none">
                            <i class="fa fa-search" aria-hidden="true"></i></button>
                    </div>
                </div>
            </li>
        </ul>
        <%--    <form class="form-inline my-2 my-lg-0">--%>
        <%--      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
        <%--      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">--%>
        <%--        <i class="fa fa-search" aria-hidden="true"></i>--%>
        <%--        Search--%>
        <%--      </button>--%>
        <%--    </form>--%>
        <ul class="navbar-nav">
            <c:choose>
                <c:when test="${auth}">
                    <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Hi, <b>${authUser.name}</b>!
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                Profile
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="javascript: $('#frmLogout').submit();">
                                <i class="fa fa-sign-out" aria-hidden="true"></i>
                                Logout
                            </a>
                        </div>
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