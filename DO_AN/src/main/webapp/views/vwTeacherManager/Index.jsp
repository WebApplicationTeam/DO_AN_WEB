<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="teacher" scope="request" type="java.util.List<beans.User>"/>

<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4 class="d-flex justify-content-between">
                    Categories
                    <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/Admin/TeacherManager/Add" role="button">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                        Add Teacher
                    </a>
                </h4>
            </div>
            <c:choose>
                <c:when test="${teacher.size() == 0}">
                    <div class="card-body">
                        <p class="card-text">Không có dữ liệu.</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Teacher name</th>
                                <th scope="col">Username&nbsp;</th>
                                <th scope="col">Email&nbsp;</th>
                                <th scope="col">Dob&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="c" items="${teacher}">

                                <tr>
                                    <th scope="row">${c.id} </th>
                                    <td>${c.name}</td>
                                    <td>${c.username}</td>
                                    <td>${c.email}</td>
                                    <td>${c.dob}</td>
                                    <td>${c.num_course}, ${c.permission}</td>
                                    <c:choose>
                                        <c:when test="${c.num_course==0}">
                                            <td class="text-right">
                                                <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/TeacherManager/Delete?id=${c.id}">
                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </c:when>
                                    </c:choose>

                                </tr>

                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:main>