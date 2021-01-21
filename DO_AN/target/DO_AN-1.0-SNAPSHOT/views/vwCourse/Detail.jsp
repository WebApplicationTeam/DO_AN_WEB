<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4>${course.course_name}</h4>
            </div>
            <div class="card-body">
                <p class="card-text mt-3">
                    Price:
                    <span class="text-danger font-weight-bold">
            <fmt:formatNumber value="${course.price}" type="number"/>
          </span>
                </p>
                <p class="card-text">Tồn kho: ${course.course_name}</p>
                <p class="card-text">${course.course_name}</p>
            </div>
        </div>
    </jsp:body>
</t:main>