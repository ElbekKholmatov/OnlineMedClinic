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

  <a class="btn btn-primary" href="/user/order">
    Back
  </a>
  <button class="btn btn-primary" type="submit">
    Next
  </button>
</form>
</body>
</html>
