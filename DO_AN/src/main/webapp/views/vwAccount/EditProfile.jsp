<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main>
  <jsp:attribute name="css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/Register.css">
  </jsp:attribute>

    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
    <script>

        document.querySelector('#btnSubmit').addEventListener('click', function(e)
        {
            check = true;
            CheckEmail(e);
            CheckCalc(e);
        });
        // Check name

        //func check
        function validateEmail(email) {
            const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email);
        }
        // Check email
        function CheckEmail(e){
            const x = validateEmail(document.querySelector('#txtEmail').value);
            if (x=== false) {
                document.getElementById("errorEmail").style.visibility="visible";
                document.getElementById("errorEmail").innerHTML = "Please fill out a valid email format";
                e.preventDefault();
                check = false;
            }
            else
            {
            }
        };
        function getRndInteger(min, max) {
            return Math.floor(Math.random() * (max - min + 1) ) + min;
        }
        const so1 = getRndInteger(1,50);
        const so2 = getRndInteger(1,50);
        document.getElementById('so1').innerHTML = so1;
        document.getElementById('so2').innerHTML = so2;
        //Check calc
        function CheckCalc(e)
        {
            const x = document.querySelector('#txtDapAn').value;
            const dapan = parseInt(so1) + parseInt(so2);
            if (x != dapan) {
                document.getElementById("errorCal").style.visibility="visible";
                document.getElementById("errorCal").innerHTML = "Please fill out a correct answer";
                e.preventDefault();
                check = false;
            }
            else
            {
                document.getElementById("errorCal").style.visibility="hidden";
            }
        };

        $('#txtDOB').datetimepicker({
            format: 'Y/m/d',
            timepicker: false,
            mask: false,
        });

        $('#txtUsername').select();
    </script>
  </jsp:attribute>

    <jsp:body>
        <form method="post" id="frmUpdate">
            <div class="card">
                <div class="card-header">
                    <h4>Personal Edit</h4>
                </div>
                <div class="card-body">
                    <div class="form-group" display: hidden >
                        <label for="txtID">#</label>
                        <input type="text" class="form-control" id="txtID" name="id" readonly value="${authUser.id}">
                    </div>
                    <div class="form-group">
                        <label for="txtName">Name</label>
                        <input type="text" class="form-control" id="txtName" name="name" value="${authUser.name}">

                    </div>
                    <div class="form-group">
                        <label for="txtEmail">Email</label>
                        <span class="error" id="errorEmail">&nbsp;</span>
                        <input type="text" class="form-control" id="txtEmail" name="email" value="${authUser.email}">
                    </div>
                    <div class="form-group">
                        <label for="txtDOB">Date of Birth</label>
                        <input type="text" class="form-control" id="txtDOB" name="dob" value="${authUser.dob}">
                    </div>
                    <div class="form-group">
                        <div style="border: teal solid 2px; padding: 2px 5px; display: inline-block;border-radius: 15px; margin: 5px 0px" id="Question">
                            <span id="so1">x</span><span> + </span><span id="so2"> y </span><span>=</span><span id="kq">?</span>
                        </div>
                        <div class="error" id="errorCal">
                            &nbsp;
                        </div>
                        <input type="text" class="form-control" id="txtDapAn">
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-outline-success" id="btnSubmit">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Edit
                    </button>
                </div>
            </div>
        </form>
    </jsp:body>
</t:main>