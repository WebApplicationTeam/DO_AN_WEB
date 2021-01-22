<%@tag pageEncoding="utf-8" %>
<%@attribute name="css" fragment="true" required="false" %>
<%@attribute name="js" fragment="true" required="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<jsp:useBean id="coursetop10" scope="request" type="java.util.List<beans.Course>"/>--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Web Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <jsp:invoke fragment="css"/>

</head>


<body>

<jsp:include page="../../views/partials/nav.jsp"/>
<div class="container">
    <jsp:doBody/>
</div>
<jsp:include page="../../views/partials/footer.jsp"/>



<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    var header = document.getElementById("tool_group");
    var btns = header.getElementsByClassName("tool_bar");
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function() {
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
        });
    }

    document.querySelectorAll("#tool_group a").forEach(e => e.addEventListener("click", _ => change_tag(e.dataset.id)));
    function change_tag(n) {
        let panels = document.querySelectorAll(".tag");
        panels.forEach(p => p.classList.remove("active_tag"));
        panels[n - 1].classList.add("active_tag");
    }
    $(document).on('click', '.dropdown-menu', function (e) {
        e.stopPropagation();
    });
    if ($(window).width() < 992) {
        $('.dropdown-menu a').click(function(e){
            if($(this).attr('href') == '#')
                e.preventDefault();
            if($(this).next('.submenu').length){
                $(this).next('.submenu').toggle();
            }
            $('.dropdown').on('hide.bs.dropdown', function () {
                $(this).find('.submenu').hide();
            })
        });
    }

</script>
<jsp:invoke fragment="js"/>
</body>

</html>