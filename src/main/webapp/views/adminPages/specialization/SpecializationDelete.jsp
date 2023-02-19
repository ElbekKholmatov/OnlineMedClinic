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
    <title>Title</title>
</head>
<body>
<form action="/admin/specialization/delete/${specialization.getId()}" method="post">
    <input type="hidden" id="id" name="id" value="${specialization.getId()}"/>
    <input type="text" id="name" name="name" value="${specialization.getName()}"/>
    <input type="submit" value="Delete"/>
</form>
</body>
</html>
