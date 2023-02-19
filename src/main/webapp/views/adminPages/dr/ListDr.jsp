
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
    <title>Admin Set</title>
</head>
<body>
<div>
    <form action="/admin/dr/getList" method="post">
        <c:forEach items="${doctors}" var="doctor">
            <div>
                <input type="text" name="doctorId" value="${doctor.getId()}"/>
                <label>${doctor.getUsername()}</label>
            </div>
            <div>
                <a href="/admin/dr/update/${doctor.getId()}">Edit</a>
                <a href="/admin/dr/delete/${doctor.getId()}">Delete</a>
            </div>
        </c:forEach>
    </form>
</div>
</body>
</html>
