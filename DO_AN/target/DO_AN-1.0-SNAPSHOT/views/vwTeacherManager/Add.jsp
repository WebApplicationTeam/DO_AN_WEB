<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<t:main>
<jsp:attribute name="css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/Body.css">
</jsp:attribute>
    <jsp:body>
        <form method="post">
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <h4>Student</h4>
                    </div>
                    <c:choose>
                        <c:when test="${newteacher.size() == 0}">
                            <div class="card-body">
                                <p class="card-text">Don't have any Student </p>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Username</th>
                                        <th scope="col" class="text-right">Email</th>
                                        <th scope="col" class="text-right">Dob</th>
                                        <th scope="col">&nbsp;Upgrade</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="c" items="${newteacher}">
                                        <tr>
                                            <td>${c.id}</td>
                                            <th scope="row" >${c.name}</th>
                                            <td>${c.username}</td>
                                            <td>${c.email}</td>
                                            <td>${c.dob}</td>


                                            <td class="text-right">
                                                <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/TeacherManager/Upgrade?id=${c.id}">
                                                    <i class="fa fa-level-up" aria-hidden="true"></i>
                                                    </a>
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