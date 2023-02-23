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
  <style>
    body{
      background: linear-gradient(90deg, #49dfdd, #479fbe);
      padding: 50px;
    }
    form{
      padding: 20px;
      border: 1px solid whitesmoke;
      border-radius: 8px;
      box-shadow: 7px 7px 7px 7px #9eeaf9;
    }
  </style>
</head>
<body>
<form method="post" action="/user/order/selectDoctor">
  <select class="form-select" aria-label="Default select example" name="doctor" style="margin-bottom: 10px">
    <option selected disabled>Select doctor</option>
    <c:forEach items="${doctors}" var="doctor">
      <option value="${doctor.getUser().getId()}">
          ${doctor.getUser().getId()}
          ${doctor.getUser().getFirstName()}
          ${doctor.getUser().getLastName()}
      </option>
    </c:forEach>
  </select>

  <div class="form-floating" style="margin-bottom: 10px">
        <textarea class="form-control" name="info" placeholder="Kasallik haqida ma'lumot..."
                  id="floatingTextarea2" style="height: 110px"></textarea>
    <label for="floatingTextarea2" style="color: gray">Kasallik haqida ma'lumot...</label>
  </div>

  <a class="btn btn-primary" style="margin-right: 5px" href="/user/order">
    Back
  </a>
  <button class="btn btn-primary" type="submit">
    Next
  </button>
</form>
</body>
</html>