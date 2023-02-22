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
        <a href="/home"><img src="" alt="None"></a>
    </div>

    <nav>
        <ul>
            <li>Home</li>
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
                        <span><a class="dropdown-item" href="#">Something else here</a></span>
                        <span>
                    <hr class="dropdown-divider">
                </span>
                        <span><a data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                                 class="dropdown-item bg-warning text-white" href="#">
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

<h1 class="w-75 mx-auto">User Page</h1>
</body>
</html>