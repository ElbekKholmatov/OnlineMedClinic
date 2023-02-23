<%--
  Created by IntelliJ IDEA.
  User: asror
  Date: 22/02/23
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/fragments/css.jsp" />
    <jsp:include page="/fragments/js.jsp" />
    <style>
        body{
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px;
        }
        a{
            margin: 15px 78px;
            padding: 14px 20px;
            width: 410px;
            background-color: rgb(104, 104, 255);
            color: white;
            border: 1px solid #3498db;
            border-radius: 3px;
            cursor: pointer;
            text-decoration: none;
        }
    </style>
</head>
<body>
<%--
  Created by IntelliJ IDEA.
  User: asror
  Date: 22/02/23
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
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
        <a href="/home"><img src="/resources/images/images.png"
                             style="height: 74px; width: 154px; border-radius: 15%; margin-top: 12px" alt="img"></a>
    </div>

    <nav>
        <ul>
            <li><a href="/home" class="text-dark text-decoration-none">Home</a></li>
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
                <a href="/home" class="btn btn-primary" style="margin-right: -25px">Sign In</a>
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
    <a href="/user/order" class="btn btn-primary">Appointment</a>
</div>
</body>
</html>


