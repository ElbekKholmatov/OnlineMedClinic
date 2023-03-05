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
    <jsp:include page="/fragments/css.jsp" />
    <jsp:include page="/fragments/js.jsp" />
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/fragments/css.jsp" />
    <jsp:include page="/fragments/js.jsp" />
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

<div class="w-75 mx-auto">
    <button onclick="location.href='/user/order'" data-text="Awesome" class="button">
        <span class="actual-text">&nbsp;Appointment&nbsp;</span>
        <span class="hover-text" aria-hidden="true">&nbsp;Appointment&nbsp;</span>
    </button>
</div>
</body>
</html>


