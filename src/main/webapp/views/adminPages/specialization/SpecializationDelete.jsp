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
    <div>
        <input type="hidden" id="id" name="id" value="${specialization.getId()}"/>
        <H1>Do You really want to delete</H1>
        <H2>${specialization.getName()}</H2>

        <input type="submit" value="Delete"/>
    </div>
</form>
</body>
</html>
