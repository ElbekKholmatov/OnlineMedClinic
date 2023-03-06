<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    body {
        background-image: url('/resources/images/blur-hospital.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
    }
</style>
<head>
    <title>Title</title>
    <jsp:include page="/fragments/css.jsp"/>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
</head>
<body>
<header class="w-75 mx-auto mt-4 mb-0">
    <div class="logo">
        <%--        <a href="/home"><img src="/resources/images/ShengoLogo.jpg"--%>
        <%--                             style="height: 100px; width: 100px; border-radius: 15%; margin-top: 12px" alt="img"></a>--%>
        <button onclick="location.href='/home'" data-text="SHEENGO" class="button">
            <span class="actual-text">&nbsp;SHEENGO&nbsp;</span>
            <span class="hover-text" aria-hidden="true">&nbsp;SHEENGO&nbsp;</span>
        </button>
    </div>

    <nav>
        <ul>
            <button onclick="location.href='/home'" data-text="Awesome" class="button">
                <span class="actual-text">&nbsp;Home&nbsp;</span>
                <span class="hover-text" aria-hidden="true">&nbsp;Home&nbsp;</span>
            </button>
            <%--            <li><a href="/home" class="text-dark text-decoration-none">Home</a></li>--%>
            <li data-bs-toggle="dropdown" aria-expanded="false">Actions
                <i class="dropdown-toggle ms-1"></i></li>
            <li>Link</li>
            <li>Language</li>
            <li>Settings</li>
        </ul>

        <c:choose>
            <c:when test="${firstName!=null}">
                <div>
                    <i class="bi bi-person" data-bs-toggle="dropdown"
                       aria-expanded="false"></i>
                    <div class="dropdown-menu">
                        <span><a class="dropdown-item" href="#">${firstName}</a></span>
                        <span><a class="dropdown-item" href="/user/order/show">Appointments</a></span>
                        <span>
                    <hr class="dropdown-divider">
                </span>
                        <span><a href="/logOut" class="dropdown-item bg-warning text-white">
                            Log out
                        </a></span>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <button onclick="location.href='/home'" data-text="Awesome" class="button">
                    <span class="actual-text">&nbsp;Sign In&nbsp;</span>
                    <span class="hover-text" aria-hidden="true">&nbsp;SignIn&nbsp;</span>
                </button>
                <%--                <a href="/home" class="btn btn-primary" style="margin-right: -25px">Sign In</a>--%>
            </c:otherwise>
        </c:choose>
    </nav>

    <div class="menu">
        <span></span>
        <span></span>
        <span></span>
    </div>
</header>
<main>
    <div class="w-75 mx-auto">
        <button onclick="location.href='/user/order'" data-text="Awesome" class="button">
            <span class="actual-text">&nbsp;Appointment&nbsp;</span>
            <span class="hover-text" aria-hidden="true">&nbsp;Appointment&nbsp;</span>
        </button>
    </div>
    <div>

    </div>
    <div class="card">
        <div class="card-info">
            <p class="title">John Doe</p>
            <p class="subtitle">Web Dev</p>
        </div>
        <div class="card-bio">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
    </div>
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
        </div>

        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000">
                <div class="card">
                    <img src="..." class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <div class="card">
                    <img src="..." class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Second slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card">
                    <img src="..." class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Third slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

</main>
<jsp:include page="/fragments/js.jsp"/>
</body>
</html>


