<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:main>
  <jsp:attribute name="css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/Register.css">
  </jsp:attribute>

    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
  </jsp:attribute>

    <jsp:body>
        <form method="post" >
            <div class="card">
                <div class="card-header">
                    <h4>Account Registration</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtname">Coursername</label>
                        <input type="text" class="form-control" id="txtname" name="course_name">
                    </div>
                    <div class="form-group">
                        <label for="txttiny">Tiny description</label>
                        <input type="text" class="form-control" id="txttiny" name="course_tiny_desc">
                    </div>
                    <div class="form-group">
                        <label for="txtfull">Full description</label>
                        <div class="error" id="errorConfirm">
                            &nbsp;
                        </div>
                        <input type="text" class="form-control" id="txtfull" name="course_full_desc">
                    </div>
                    <%--CATID--%>
                    <select name="cat_id">
                        <option value="1">Web Development</option>
                        <option value="2">Mobile Development</option>
                        <option value="4">IT Certification</option>
                    </select>
                    <div class="form-group" display: hidden>
                        <label for="txtuserid">$"{authUser.id}</label>
                        <input type="text" class="form-control" id="txtuserid" name="teacher_id" value="${authUser.id}">
                    </div>
                    <div class="form-group" display: hidden>
                        <label for="txtdoupdate">Date of update</label>
                        <input type="text" class="form-control" id="txtdoupdate" name="dou">
                    </div>
                    <div class="form-group" display: hidden>
                        <label for="txtdocreate">Date of create</label>
                        <input type="text" class="form-control" id="txtdocreate" name="doc">
                    </div>
                    <div class="form-group">
                        <label for="txtamm">Ammount chapter</label>
                        <input type="text" class="form-control" id="txtamm" name="amount_chapter">
                    </div>
                    <div class="form-group">
                        <label for="txtprice">price</label>
                        <input type="text" class="form-control" id="txtprice" name="price">
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-outline-success" id="btnSubmit">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Create course
                    </button>
                </div>
            </div>
        </form>
    </jsp:body>
</t:main>
