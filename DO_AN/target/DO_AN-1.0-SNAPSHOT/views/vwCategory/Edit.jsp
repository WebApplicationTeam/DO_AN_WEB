<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="categories" scope="request" type="beans.Category"/>
<t:main>
    <jsp:body>
        <c:choose>
            <c:when test="${categories.num_course==0}">
                <form method="post">
                    <div class="card">
                        <div class="card-header">
                            <h4>Category</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="txtCatID">#</label>
                                <input type="text" class="form-control" id="txtCatID" name="CatID" readonly value="${categories.cat_id}">
                            </div>
                            <div class="form-group">
                                <label for="txtCatName">Category</label>
                                <input type="text" class="form-control" id="txtCatName" name="CatName" autofocus value="${categories.cat_name}">
                            </div>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/Category/" role="button">
                                <i class="fa fa-backward" aria-hidden="true"></i>
                                List
                            </a>

                            <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/Category/Delete">
                                <i class="fa fa-trash-o" aria-hidden="true"></i>
                                Delete
                            </button>

                            <button type="submit" class="btn btn-outline-success" formaction="${pageContext.request.contextPath}/Admin/Category/Update">
                                <i class="fa fa-check" aria-hidden="true"></i>
                                Save
                            </button>
                        </div>
                    </div>
                </form>

            </c:when>
            <c:otherwise>
                <form method="post">
                    <div class="card">
                        <div class="card-header">
                            <h4>Category</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="txtCatID">#</label>
                                <input type="text" class="form-control" <%--id="txtCatID" --%>name="CatID" readonly value="${categories.cat_id}">
                            </div>
                            <div class="form-group">
                                <label for="txtCatName">Category</label>
                                <input type="text" class="form-control"<%-- id="txtCatName"--%> name="CatName" autofocus value="${categories.cat_name}">
                            </div>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/Category/" role="button">
                                <i class="fa fa-backward" aria-hidden="true"></i>
                                List
                            </a>

                           <%-- <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/Category/Delete">
                                <i class="fa fa-trash-o" aria-hidden="true"></i>
                                Delete
                            </button>--%>

                            <button type="submit" class="btn btn-outline-success" formaction="${pageContext.request.contextPath}/Admin/Category/Update">
                                <i class="fa fa-check" aria-hidden="true"></i>
                                Save
                            </button>
                        </div>
                    </div>
                </form>
            </c:otherwise>
        </c:choose>


    </jsp:body>
</t:main>