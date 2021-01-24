<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="authUser" scope="session" type="beans.User"/>

<t:main>
     <jsp:attribute name="css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/Detail.css">
    </jsp:attribute>
    <jsp:attribute name="js">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    </jsp:attribute>
    <jsp:body>
        <form method="post">
        <div class="Desk">
            <div class="bg-dark">
                <div class="card mb-3 container" style="background-color: transparent;border: none">
                    <div class="card-body">
                        <img src="${pageContext.request.contextPath}/public/image/1.png" class="card-img-top" alt="...">
                        <h2 class="card-title text-white" style="font-weight: bold">${course.course_name}</h2>
                        <p class="card-text text-white">${course.course_tiny_desc}</p>
                        <div class="Stars" style="--rating: ${course.rating};" aria-label="Rating of this product is 2.3 out of 5."><span style="font-weight: bold ;color: #ffcc00">${course.rating}</span></div>
                        <p class="card-text text-white">Created by &nbsp;<a>${course.teacher_id}</a></p>
                        <p class="card-text text-white">Last updated&nbsp;<span>${course.last_update}</span></p>
                        <div style="font-weight: bold" class="card-text text-white"><span>$</span>${course.price}</div>
                        <div class="d-grid gap-2 d-md-block my-3 d-flex justify-content-around">
                            <button class="btn btn-light" type="button" style="font-weight: bold">
                                Wishlist
                                <i class="fa fa-heart-o" aria-hidden="true"></i>
                            </button>
                            <button class="btn btn-light" type="button"style="font-weight: bold">
                                Share
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </button>
                            <button class="btn btn-light" type="button" style="font-weight: bold">Gift this course</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mt-3 mb-3 container" style="background-color: transparent;border: none">
                <div class="card-body">
                    <div style="border: #9da2ad solid 2px; border-radius: 3px;background-color: #f1f1f1;padding: 15px;">
                        <div style="font-weight: bold;font-size: 20px">What'll you learn</div>
                        <div class="row">
                                <%-- <div class="col-md-6">
                                     <div class="my-2"><i class="fa fa-check mr-2" aria-hidden="true"></i>Trần Hoàng Long</div>
                                     <div class="my-2"><i class="fa fa-check mr-2" aria-hidden="true"></i>Trần Gia Phúc</div>
                                     <div class="my-2"><i class="fa fa-check mr-2" aria-hidden="true"></i>Nguyễn Đức Hảo</div>
                                     <div class="my-2"><i class="fa fa-check mr-2" aria-hidden="true"></i>Nguyễn Văn Huy</div>
                                 </div>
                                 <div class="col-md-6">
                                     <div class="my-2"><i class="fa fa-check" aria-hidden="true"></i>Trần Hoàng Long</div>
                                     <div class="my-2"><i class="fa fa-check" aria-hidden="true"></i>Trần Gia Phúc</div>
                                     <div class="my-2"><i class="fa fa-check" aria-hidden="true"></i>Nguyễn Đức Hảo</div>
                                     <div class="my-2"><i class="fa fa-check" aria-hidden="true"></i>Nguyễn Văn Huy</div>
                                 </div>--%>
                                ${course.learned}
                        </div>
                    </div>
                    <div>
                        <div style="font-size:20px ;font-weight: bold">Course content</div>
                    </div>
                    <c:forEach var="c" items="${content}">
                        <c:forEach var="d" items="${content}">
                            <div class="navbar navbar-dark bg-light">
                                <div class="container-fluid">
                                    <button class="navbar-toggler text-dark" type="submit" formaction="${pageContext.request.contextPath}/Course/Content?id=${c.course_id}&chapter=${d.chapter}" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <i class="fa fa-sort-desc" aria-hidden="true"></i>
                                    </button>
                                    <div>${content.chapter_name}</div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:forEach>

                    <div class="collapse" id="navbarToggleExternalContent">
                        <div class="bg-light p-4">
                            <c:forEach var="d"  items="session">
                                <c:choose>
                                    <c:when test="${content.chapter}">
                                        <a href="${session.link}">${session.name}</a>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>