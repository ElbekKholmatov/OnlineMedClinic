<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/16/23
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form class="form-control" method="post">
    name: <input type="text" name="name" placeholder="name"/>
    description: <input type="text" name="description" placeholder="description"/>
    <select class="form-select"   aria-label="select example" style="margin-top: 30px" id="specialization_id"
            name="specialization_id">
        <option value="0">Choose a category</option>
        <c:forEach items="${specializations}" var="specialization">
            <option value="${specialization.getId()}">${specialization.getName()}</option>
        </c:forEach>
    </select>
    <button type="submit">submit</button>
</form>
</body>
</html>
