<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/15/23
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Delete Admin</title>
</head>
<body>
<form action="/superAdmin/deleteAdmin" method="post">
    <h3>Remove Admin</h3>
    <div class="form-group">
        <select class="form-select" id="delete_username"
                name="delete_username">
            <option selected>select admin</option>
            <c:forEach items="${admins}" var="admin">
                <option value="${admin.getUsername()}">${admin.getUsername()}</option>
            </c:forEach>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">remove admin</button>
</form>
</body>
</html>
