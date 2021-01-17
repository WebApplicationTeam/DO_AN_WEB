<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:main>
<jsp:attribute name="css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Templates/body.css">
</jsp:attribute>
    <jsp:body>
       <div class="bo">
       </div>
        <div class="text">
            <p>
                <h3>The world's largest selection of courses <br></h3>
                Choose from 130,000 online video courses with new additions published every month
            </p>
        </div>
        <div class="row">
            <div class="d-flex" id="tool_group">
                <a data-id="1" class="tool_bar active" id="Py">Python</a>
                <a data-id="2" class="tool_bar" id="Ex">Excel</a>
                <a data-id="3" class="tool_bar" id="friend">Web Development</a>
                <a data-id="4" class="tool_bar" id="JS">Javascript</a>
                <a data-id="5" class="tool_bar" id="DS">Data Science</a>
                <a data-id="6" class="tool_bar" id="AC">AWS Certification</a>
                <a data-id="7" class="tool_bar" id="Dr">Drawing</a>

            </div>
        </div>
        <div class="container">
            <div class="row tag active_tag">
                <p class="text1">
                    Expand your career opportunities with Python
                </p>
                <p>
                    Whether you you work in machine learning of finance, or are pursuing a career in web development <br>or data science,
                    Python is one of the most important skill you can learn. Python's simple syntax is <br>especially suited for desktop, web and business applications.
                </p>
                <a href="#">Explore Python ></a>
            </div>
            <div class="row tag">
                <p class="text1">
                    Analyze and visualize data with excel
                </p>
                <p>
                    Regardless of the industry you work in, Microsoft Office Excel is an invaluable spreadsheet<br>
                    program for organizing and representing data. Excel offers functions, formulas, ang pivot tables<br>
                    to help you aggregate and then analyze large sets of information.
                </p>
                <a href="#">Explore Excel></a>
            </div>
            <div class="row tag">
                ne
            </div>
            <div class="row tag">
                cac
            </div>
            <div class="row tag">
                ban
            </div>
            <div class="row tag">
                oi
            </div>
            <div class="row tag">
                hu
            </div>

        </div>

    </jsp:body>
</t:main>