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
        <form method="post" id="frmRegister">
            <div class="card">
                <div class="card-header">
                    <h4>Account Registration</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtname">Coursername</label>
                        <input type="text" class="form-control" id="txtname" name="username">
                    </div>
                    <div class="form-group">
                        <label for="txttiny">Tiny description</label>
                        <input type="text" class="form-control" id="txttiny" name="text">
                    </div>
                    <div class="form-group">
                        <label for="txtfull">Full description</label>
                        <div class="error" id="errorConfirm">
                            &nbsp;
                        </div>
                        <input type="text" class="form-control" id="txtfull" name="confirm">
                    </div>
                    <%--CATID--%>
                    <div class="form-group">
                        <label for="txtprice">Price</label>
                        <input type="text" class="form-control" id="txtprice" name="username">
                    </div>
                    <div class="form-group" display: hidden>
                        <label for="txtdoupdate">Date of update</label>
                        <input type="text" class="form-control" id="txtdoupdate" name="dob">
                    </div>
                    <div class="form-group" display: hidden>
                        <label for="txtdocreate">Date of create</label>
                        <input type="text" class="form-control" id="txtdocreate" name="dob">
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
