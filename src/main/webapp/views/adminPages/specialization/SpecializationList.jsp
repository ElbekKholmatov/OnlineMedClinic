<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/17/23
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Specialization List</title>
</head>
<body>
<h1>Specialization List</h1>
<c:forEach var="specialization" items="${specializations}">
<input type="hidden" name="id" id="id" value="${specialization.getId()}">
<input type="text" name="name" id="name" value="${specialization.getName()}">
    <div>
        <a href="/admin/specialization/update/${specialization.getId()}">Edit</a>
        <a href="/admin/specialization/delete/${specialization.getId()}">Delete</a>
    </div>
</c:forEach>
</body>
</html>

