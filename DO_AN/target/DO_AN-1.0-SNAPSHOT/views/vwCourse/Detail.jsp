<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<t:main>
     <jsp:attribute name="css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/Detail.css">
    </jsp:attribute>
    <jsp:body>
        <div class="bg-dark">
            <div class="card mt-3 mb-3 container" style="background-color: transparent;border: none">
                <div class="row">
                    <div class="card back-to-top col-md-4" style="width: 23rem">
                        <div class="card-body ">
                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="card col-md-4" style="border: none;background-color: transparent">
                    </div>
                    <div class="card-body col-md-8">
                        <h2 class="card-title text-white">${course.course_name}</h2>
                        <p class="card-text text-white">${course.course_tiny_desc}</p>
                        <p class="card-text text-white">${course.rating}</p>
                        <p class="card-text text-white">${course.rating}</p>
                        <p class="card-text text-white">${course.learned}&nbsp;Students</p>
                        <p>Created by &nbsp;<a>${course.teacher_id}</a></p>
                        <p>Last updated<span>${course.last_update}</span></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card mt-3 mb-3 container" style="background-color: transparent;border: none">
            <div class="row">
                <div class="card col-md-4" style="border: none;background-color: transparent">
                </div>
                <div class="card-body col-md-8">
                    <h2 class="card-title text-black">${course.course_name}</h2>
                    <p class="card-text text-black">${course.course_tiny_desc}</p>
                    <p class="card-text text-black">${course.rating}</p>
                    <p class="card-text text-black">${course.rating}</p>
                    <p class="card-text text-black">${course.learned}&nbsp;Students</p>
                    <p>Created by &nbsp;<a>${course.teacher_id}</a></p>
                    <p>Last updated<span>${course.last_update}</span></p>
                    <h2 class="card-title text-black">${course.course_name}</h2>
                    <p class="card-text text-black">${course.course_tiny_desc}</p>
                    <p class="card-text text-black">${course.rating}</p>
                    <p class="card-text text-black">${course.rating}</p>
                    <p class="card-text text-black">${course.learned}&nbsp;Students</p>
                    <p>Created by &nbsp;<a>${course.teacher_id}</a></p>
                    <p>Last updated<span>${course.last_update}</span></p><h2 class="card-title text-black">${course.course_name}</h2>
                    <p class="card-text text-black">${course.course_tiny_desc}</p>
                    <p class="card-text text-black">${course.rating}</p>
                    <p class="card-text text-black">${course.rating}</p>
                    <p class="card-text text-black">${course.learned}&nbsp;Students</p>
                    <p>Created by &nbsp;<a>${course.teacher_id}</a></p>
                    <p>Last updated<span>${course.last_update}</span></p>

                </div>
            </div>
        </div>
    </jsp:body>
</t:main>