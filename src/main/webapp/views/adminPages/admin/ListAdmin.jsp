<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/16/23
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>AdminList</title>
</head>
<body>
<c:forEach var="admin" items="${admins}">
    <p>${admin.getId()} <==> ${admin.getUsername()}</p>
</c:forEach>
</body>
</html>
