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
<form action="/admin/dr/delete/*" method="post">
    <h3>Remove Admin</h3>
    <div class="form-group">
        <input type="hidden" class="form-control" id="id" name="id" value="${doctor.getId()}">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" name="username" value="${doctor.getUsername()}">
    </div>
    <button type="submit" class="btn btn-primary">Delete Doctor</button>
</form>
</body>
</html>
