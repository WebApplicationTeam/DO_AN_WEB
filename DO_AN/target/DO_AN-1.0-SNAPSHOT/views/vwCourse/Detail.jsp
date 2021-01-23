<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<t:main>
     <jsp:attribute name="css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/detail.css">
    </jsp:attribute>
    <jsp:attribute name="js">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    </jsp:attribute>
    <jsp:body>
        <div class="Desk">
            <div class="bg-dark">
                <div class="card mb-3 container" style="background-color: transparent;border: none">
                    <div class="row">
                        <div class="card back-to-top col-md-4 mt-3" style="width: 24rem">
                            <div class="card" style="width: 100%;border: none">
                                <img src="${pageContext.request.contextPath}/public/image/1.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <div style="font-weight: bold"><span>$</span>${course.price}</div>
                                    <div class="d-grid gap-2">
                                        <button class="btn btn-lg btn-danger" type="button" style="width: 100%; font-weight: bold">Join now</button>
                                        <button class="btn  btn-lg btn-outline-success" type="button" style="width: 100%;font-weight: bold">Buy now</button>
                                    </div>
                                    <div class="mt-3">
                                        <div style="font-weight: 600;font-size: 20px">This course inclue:</div>
                                        <ul style="font-size: 16px;list-style-type: none">
                                            <li>A</li>
                                            <li>B</li>
                                            <li>C</li>
                                            <li>D</li>
                                            <li>E</li>
                                            <li>F</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card col-md-4" style="border: none;background-color: transparent">
                        </div>
                        <div class="card-body col-md-8">
                            <h2 class="card-title text-white" style="font-weight: bold">${course.course_name}</h2>
                            <p class="card-text text-white">${course.course_tiny_desc}</p>
                            <p class="card-text text-white">${course.rating}</p>
                            <p class="card-text text-white">Created by &nbsp;<a>${course.teacher_id}</a></p>
                            <p class="card-text text-white">Last updated&nbsp;<span>${course.last_update}</span></p>
                            <div class="d-grid gap-2 d-md-block">
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
            </div>
            <div class="card mt-3 mb-3 container" style="background-color: transparent;border: none">
                <div class="row">
                    <div class="card col-md-4" style="border: none;background-color: transparent">
                    </div>
                    <div class="card-body col-md-8">
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
                        <div class="navbar navbar-dark bg-light">
                            <div class="container-fluid">
                                <button class="navbar-toggler text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <i class="fa fa-sort-desc" aria-hidden="true"></i>
                                </button>
                                <div>Content</div>
                            </div>
                        </div>
                        <div class="collapse" id="navbarToggleExternalContent">
                            <div class="bg-light p-4">
                                <h5 class="h4">Collapsed content</h5>
                                <span class="">Toggleable via the navbar brand.</span>
                            </div>
                        </div>
                        <div class="navbar navbar-dark bg-light">
                            <div class="container-fluid">
                                <button class="navbar-toggler text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent1" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <i class="fa fa-sort-desc" aria-hidden="true"></i>
                                </button>
                                <div>Content</div>
                            </div>
                        </div>
                        <div class="collapse" id="navbarToggleExternalContent1">
                            <div class="bg-light p-4">
                                <h5 class="h4">Collapsed content</h5>
                                <span class="">Toggleable via the navbar brand.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="Desk1">
            <div class="bg-dark">
                <div class="card mb-3 container" style="background-color: transparent;border: none">
                    <div class="card-body">
                        <img src="${pageContext.request.contextPath}/public/image/1.png" class="card-img-top" alt="...">
                        <h2 class="card-title text-white" style="font-weight: bold">${course.course_name}</h2>
                        <p class="card-text text-white">${course.course_tiny_desc}</p>
                        <p class="card-text text-white">${course.rating}</p>
                        <p class="card-text text-white">Created by &nbsp;<a>${course.teacher_id}</a></p>
                        <p class="card-text text-white">Last updated&nbsp;<span>${course.last_update}</span></p>
                        <div style="font-weight: bold"><span>$</span>${course.price}</div>
                        <button class="btn btn-lg btn-danger" type="button" style="width: 100%; font-weight: bold">Join now</button>
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
            <div class="card mt-3 mb-3 " style="background-color: transparent;border: none">
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
                        <div class="navbar navbar-dark bg-light">
                            <div class="container-fluid">
                                <button class="navbar-toggler text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent3" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <i class="fa fa-sort-desc" aria-hidden="true"></i>
                                </button>
                                <div>Content</div>
                            </div>
                        </div>
                        <div class="collapse" id="navbarToggleExternalContent3">
                            <div class="bg-light p-4">
                                <h5 class="h4">Collapsed content</h5>
                                <span class="">Toggleable via the navbar brand.</span>
                            </div>
                        </div>
                        <div class="navbar navbar-dark bg-light">
                            <div class="container-fluid">
                                <button class="navbar-toggler text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent4" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <i class="fa fa-sort-desc" aria-hidden="true"></i>
                                </button>
                                <div>Content</div>
                            </div>
                        </div>
                        <div class="collapse" id="navbarToggleExternalContent4">
                            <div class="bg-light p-4">
                                <h5 class="h4">Collapsed content</h5>
                                <span class="">Toggleable via the navbar brand.</span>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </jsp:body>
</t:main>