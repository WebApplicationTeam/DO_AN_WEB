<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="course" scope="request" type="java.util.List<beans.Course>"/>
<jsp:useBean id="favours" scope="request" type="java.util.List<beans.Course>"/>
<t:main>
    <jsp:attribute name="css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/Profile.css">
    </jsp:attribute>
    <jsp:body>
        <form method="post">
            <div class="card">
                <div class="card-header">
                    <h4>Profile</h4>
                    <span class="editPro"><a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Account/EditProfile" role="button">Update Profile <i class="fa fa-pencil" aria-hidden="true"></i></a></span>
                </div>
                <div class="card-body">
                    <img alt="${authUser.name}" title="${authUser.email}" src="${pageContext.request.contextPath}/public/image/${authUser.name}.jpg" width="200 " height="268">
                    <p class="card-text"><span class="titlePro">Name:</span> <span> ${authUser.name}</span></p>
                    <p class="card-text"><span class="titlePro">Email: </span><span> ${authUser.email}</span></p>
                    <p class="card-text"><span class="titlePro">Date of Birth:</span> <span> ${authUser.dob}</span></p>

                    <h3>FAV:</h3>
                    <c:choose>
                        <c:when test="${favours.size() == 0}">
                            <div class="card-body">
                                <p class="card-text">Don't have any Favorite Courses </p>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">Course Name</th>
                                        <th scope="col">Rating</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="c" items="${favours}">
                                        <tr>
                                            <td scope="row">${c.course_name}</td>
                                            <td>${c.rating}</td>
                                            <td>${c.price}</td>
                                            <td class="text-right">
                                                <button class="btn btn-sm btn-outline-primary" type="submit" formaction="${pageContext.request.contextPath}/Account/DeleteFAV?id=${c.course_id}&q=${authUser.id}" >
                                                    <i class="fa fa-heart" aria-hidden="true" id="heart"  ></i>

                                                </button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </c:otherwise>
                    </c:choose>

                    <h3>
                        Course:
                    </h3>
                    <c:choose>
                        <c:when test="${course.size() == 0}">
                            <div class="card-body">
                                <p class="card-text">Don't have any Courses </p>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">Course Name</th>
                                        <th scope="col">Rating</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="c" items="${course}">
                                        <tr>
                                            <td scope="row">${c.course_name}</td>
                                            <td>${c.rating}</td>
                                            <td>${c.price}</td>
                                            <td class="text-right">
                                                <a class="btn btn-sm btn-outline-primary" href="#" role="button">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </form>
    </jsp:body>
</t:main>