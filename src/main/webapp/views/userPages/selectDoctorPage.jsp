<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Doctor</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>
<form method="post" action="/user/order/selectDoctor">
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

    <a class="btn btn-primary" href="/views/userPages/appointment.jsp">
        Back
    </a>
    <a class="btn btn-primary" href="/views/userPages/selectDate.jsp">
        Next
    </a>
</form>
</body>
</html>
