<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>
<form method="post" action="/user/order/submit">

    <h1>${now.getDayOfWeek()}</h1>
    <input type="hidden" name="day" value="${now.getDayOfMonth()}">

    <c:forEach begin="9" end="17" var="i">
        <c:if test="${!hours.contains(i)}">
            <hr>
            <input type="radio" name="hour" value="${i}">
            <label>${i} : 00 : 00</label>
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

    <button class="btn btn-success mt-5" type="submit">Submit</button>
    <span class="text-danger">${exception}</span>
</form>
</body>
</html>
