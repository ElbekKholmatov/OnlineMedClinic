<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/16/23
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Diseases List</title>
</head>
<body>
<div>
    <c:forEach items="${diseases}" var="disease">
        <div>
            <input type="text" id="disease_id" name="disease_id" value="${disease.getId()}">${disease.getName()}
            <button type="button" onclick="location.href='/admin/diseases/update/${disease.getId()}'">Update</button>
            <button type="button" onclick="location.href='/admin/diseases/delete/${disease.getId()}'">Delete</button>
        </div>
    </c:forEach>
</div>
</body>
</html>
