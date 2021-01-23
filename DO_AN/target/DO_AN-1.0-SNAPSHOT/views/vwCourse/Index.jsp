<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="course" scope="request" type="java.util.List<beans.Course>"/>
<t:main>
<jsp:attribute name="css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/body.css">
</jsp:attribute>
    <jsp:body>
        <form method="post">
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <h4>Courses</h4>
                    </div>
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
                                        <th scope="col">#</th>
                                        <th scope="col">Course</th>
                                        <th scope="col">Description</th>
                                        <th scope="col" class="text-right">Price</th>
                                        <th scope="col" class="text-right">Quantity</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="c" items="${course}">
                                        <tr>
                                            <th scope="row" >${c.course_id}</th>
                                            <td>${c.course_name}</td>
                                            <td>${c.course_tiny_desc}</td>
                                            <td class="text-right">
                                                <fmt:formatNumber value="${c.price}" type="number"/>
                                            </td>
                                            <td class="text-right">${c.rating}</td>
                                            <td class="text-right">
                                                <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/Course/Delete?id=${c.course_id}">
                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>

                                                </button>
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