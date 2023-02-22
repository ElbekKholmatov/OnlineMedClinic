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
<form action="/admin/disease/delete/${disease.getId()}" method="post">
    <input type="hidden" id="id" name="id" value="${disease.getId()}"/>
    <h1>Are you sure you want to delete ${disease.getName()}?</h1>
    <input type="submit" value="Delete"/>
</form>
</body>
</html>
