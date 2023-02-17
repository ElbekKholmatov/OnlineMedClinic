<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/16/23
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/admin/issue/update" method="post">
<input type="hidden" name="id" value="${issue.id}"/>
    <input type="text" name="name" value="${issue.getName()}"/>
    <input type="text" name="description" value="${issue.getDescription()}"/>
    <select class="form-select"   aria-label="select example" style="margin-top: 30px" id="specialization_id"
            name="specialization_id">
        <option value="${issue.getSpecializationId()}">${issue.getSpecializationName()}</option>
        <c:forEach items="${specializations}" var="specialization">
            <option value="${specialization.getId()}">${specialization.getName()}</option>
        </c:forEach>
    </select>
    <input type="submit" value="submit"/>
</form>
</body>
</html>
