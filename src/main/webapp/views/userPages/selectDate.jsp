<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asror
  Date: 17/02/23
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>

<form method="post" action="/user/order/submit">

    <h1>${now.getDayOfWeek()}</h1>

    <c:forEach begin="9" end="17" var="i">
        <c:if test="${!hours.contains(i)}">
            <hr>
            <input type="radio" name="day" value="${now.getDayOfMonth()}">
            <input type="hidden" id="time" name="hour" value="${i}">
            <label>${i} : 00 : 00</label>
            <br>
        </c:if>
    </c:forEach>

    <button class="btn btn-primary mt-5" type="submit">Submit</button>
</form>

</body>
</html>
