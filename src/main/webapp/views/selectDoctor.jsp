<%--
  Created by IntelliJ IDEA.
  User: asror
  Date: 21/02/23
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
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


<form method="post" action="/user/order/selectDoctor">
    <div class="w-75 mx-auto">
        <select class="form-select" aria-label="Default select example" name="doctor">
            <option selected disabled>Select doctor</option>
            <c:forEach items="${doctors}" var="doctor">
                <option value="${doctor.getUser().getId()}">
                        ${doctor.getUser().getId()}
                        ${doctor.getUser().getFirstName()}
                        ${doctor.getUser().getLastName()}
                </option>
            </c:forEach>
        </select>

        <div class="form-floating">
        <textarea class="form-control" name="info" placeholder="Kasallik haqida ma'lumot..."
                  id="floatingTextarea2" style="height: 110px"></textarea>
            <label for="floatingTextarea2">Info</label>
        </div>

        <a class="mt-5 btn btn-primary" href="/user/order">
            Back
        </a>
        <button class="mt-5 btn btn-primary" type="submit">
            Next
        </button>
    </div>
</form>
</body>
</html>
