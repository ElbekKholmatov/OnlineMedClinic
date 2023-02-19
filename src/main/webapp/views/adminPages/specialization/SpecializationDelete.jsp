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
<form action="/admin/specialization/delete/*" method="post">
    <c:forEach items="${specializations}" var="specialization">
        <input type="text" name="id" id="id" value="${specialization.getId()}"/>
        ${specialization.getName()}
    </c:forEach>
</form>
</body>
</html>
