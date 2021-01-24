<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<t:main>
    <jsp:attribute name="css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/ByCats.css">
    </jsp:attribute>
    <jsp:body>
        <div class="container">
        <div class="card">
        <div class="card-header">
        </div>
        <c:choose>
            <c:when test="${parentCoure.size() == 0}">
                <div class="card-body">
                    <p class="card-text">Don't have any Courses </p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="card-body">
                <div class="row">
                <c:forEach var="c" items="${parentCoure}">
                    <div class="col-sm-4 mb-3">

                        <div class="card h-100 card_box">
                            <img src="${pageContext.request.contextPath}/public/categories/${c.course_id}/main.jpg" alt="${c.course_name}" title="" class="card-img-top"/>
                            <div class="card-body card_size" style="background-color: teal">
                                <h4 class="card-title">${c.course_name}</h4>
                                <h5 class="card-title text-danger">
                                    <fmt:formatNumber value="${c.price}" type="number"/>
                                </h5>
                                <p class="card-text">${c.name}</p>
                                <div class="Stars" style="--rating: ${c.rating};" aria-label="Rating of this product is 2.3 out of 5."><span style="font-weight: bold ;color: #ffcc00">${c.rating}</span></div>
                                <p class="card-text">${c.cat_name}</p>
                                <p class="card-text">${c.price}$</p>
                            </div>
                            <div class="card-footer">
                                <a class="btn btn-sm btn-outline-primary"
                                   href="${pageContext.request.contextPath}/Course/Detail?id=${c.course_id}"
                                   role="button">
                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                    Details
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:otherwise>
        </c:choose>
        </div>
        </div>
    </jsp:body>
</t:main>
