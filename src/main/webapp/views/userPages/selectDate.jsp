<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
    </style>
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


<form method="post" action="/user/order/submit">
    <div class="w-75 mx-auto">

        <h1>${now.getDayOfWeek()}</h1>
        <input type="hidden" name="day" value="${now.getDayOfMonth()}">

        <c:forEach begin="9" end="17" var="i">
            <c:if test="${!hours.contains(i)}">
                <hr>
                <input class="form-check-input" type="radio" name="hour" value="${i}">
                <label class="form-check-label">${i} : 00 : 00</label>
                <br>
            </c:if>
        </c:forEach>

        <div>
            <c:if test="${hasBack}">
                <a href="/user/order/submit?month=${now.getMonth().getValue()}&day=${now.getDayOfMonth()}&back=true"
                   class="btn btn-primary mt-5">Back</a>
            </c:if>
            <c:if test="${hasNext}">
                <a href="/user/order/submit?month=${now.getMonth().getValue()}&day=${now.getDayOfMonth()}"
                   class="btn btn-primary mt-5">Next</a>
            </c:if>
        </div>

        <input type="hidden" name="next" value="${hasNext}">
        <input type="hidden" name="back" value="${hasBack}">
        <input type="hidden" name="day" value="${now.getDayOfMonth()}">
        <input type="hidden" name="month" value="${now.getMonth().getValue()}">
        <button class="btn btn-success mt-5" type="submit">Submit</button>
        <span class="text-danger">${exception}</span>
    </div>
</form>
</body>
</html>

