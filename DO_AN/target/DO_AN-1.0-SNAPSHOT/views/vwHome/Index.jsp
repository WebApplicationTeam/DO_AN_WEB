<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="coursetop10" scope="request" type="java.util.List<beans.Course>"/>

<t:main>
<jsp:attribute name="css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/body.css">
    <link rel="stylesheet" href="https://cdn.boomcdn.com/libs/owl-carousel/2.3.4/assets/owl.carousel.min.css">
</jsp:attribute>
    <jsp:attribute name="js">


        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.boomcdn.com/libs/owl-carousel/2.3.4/owl.carousel.min.js"></script>
        <script>
            $(".card_carousel").owlCarousel({
                loop:true,
                autoplay:true,
                autoplayTimeout: 2000,
                autoplayHoverPause: true,
            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="container">
            <div id="carouselExampleIndicators" class="carousel slide mt-3" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="${pageContext.request.contextPath}/public/image/2.jpg" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/public/image/1.png" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/public/image/3.png" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/public/image/4.png" class="d-block w-100">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="container">
            <div class="text">
                <p>
                <h3>The world's largest selection of courses <br></h3>
                Choose from 130,000 online video courses with new additions published every month
                </p>
            </div>
        </div>
        <div class="row">
            <div class="d-flex" id="tool_group">
                <c:forEach var="c" items="${category}">
                    <a data-id="${c.cat_id}"  class="tool_bar">
                            ${c.cat_name}
                    </a>
                </c:forEach>
            </div>
        </div>

        <div class="container">
            <c:forEach var="c" items="${category}">
                <div class="row tag">
                    <p class="text1">
                            ${c.cat_desc_1}
                    </p>
                    ${c.toString()}
                    <p>
                            ${c.cat_desc_2}
                    </p>
                    <a href="#">${c.cat_name}></a>

                </div>
            </c:forEach>

        </div>


        <div class="container">

                <div class="card-deck card_carousel owl-carousel">
                    <c:forEach var="coursetop10" items="${coursetop10}">
                            <div class="card h-100 card_hover mb-5">
                                <div class="card-body card_size">
                                    <h5 class="card-title">${coursetop10.course_name}</h5>
                                    <p class="card-text">${coursetop10.course_tiny_desc}</p>
                                    <p class="card-text">${coursetop10.rating}</p>
                                    <p class="card-text card_price">${coursetop10.price}</p>
                                    <div class="ui-but">
                                        <a  href="#" class="btn btn-outline-primary">Join now</a>
                                        <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    </div>

                                </div>
                            </div>
                    </c:forEach>
                </div>
        </div>




        <div class="container">
            <div class="texth3">
                <h3>Student are Viewing</h3>
            </div>
            <div class="card-deck">
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="center">
            <h2 style="font-weight: bold"> Get personal learning recommendation</h2>
            <h4>Answer a few question for your top picks</h4>
            <button type="button" class="btn btn-outline-primary">Get started</button>
        </div>
        <div class="container">
            <h3 class="texth3">Top Categories</h3>
            <div class="card-deck">
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>

            </div>
            <div class="card-deck">
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>

            </div>
            <h3 class="texth3">Featured topics by category</h3>
            <div class="row align-items-center">
                <div class="col">
                    <p class="txt4">Deployment</p>
                    <a class="txt4" href="#">Python</a>
                    <p>23,629,939 students</p>
                    <a class="txt4" href="#">Web Development</a>
                    <p>8,061,989 students</p>
                    <a class="txt4" href="#">Machine Learning</a>
                    <p>4,597,425 students</p>
                </div>
                <div class="col">
                    <p class="txt4">Business</p>
                    <a class="txt4" href="#">Financial Analysis </a>
                    <p>913,881 students</p>
                    <a class="txt4" href="#">SQL</a>
                    <p>3,520,304 students</p>
                    <a class="txt4" href="#">PMP</a>
                    <p>1,243,449 students</p>

                </div>
                <div class="col">
                    <p class="txt4">IT and Software</p>
                    <a class="txt4" href="#">AWS Certification </a>
                    <p>3,582,843 students</p>
                    <a class="txt4" href="#">Ethical Hacking</a>
                    <p>7,685,271 students</p>
                    <a class="txt4" href="#">Cyber Security</a>
                    <p>2,615,660 students</p>
                </div>
                <div class="col">
                    <p class="txt4">Design</p>
                    <a class="txt4" href="#">Photoshop</a>
                    <p>8,285,580 students</p>
                    <a class="txt4" href="#">Graphic Design</a>
                    <p>2,387,768 students</p>
                    <a class="txt4" href="#">Drawing</a>
                    <p>2,055,275 students</p>
                </div>
            </div>
            <button type="button" class="btn btn-secondary">Explore more</button>
        </div>
        <div class="center">
            <h2 style="font-weight: bold"> Become an instructor</h2>

            <button type="button" class="btn btn-outline-primary">Start teaching today</button>
        </div>
        <div class="center">
            <h3>Trusted by company of all size</h3>

        </div>

    </jsp:body>

</t:main>