<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/15/23
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Admin</title>
</head>
<body>
<form action="/superAmin/deleteAdmin" method="post">
    <h3>Remove Admin</h3>
    <div class="form-group">
        <label for="delete_username">Username</label>
        <input type="text" class="form-control" id="delete_username" name="delete_username" placeholder="Enter username">
    </div>
    <button type="submit" class="btn btn-primary">remove admin</button>
</form>
</body>
</html>
