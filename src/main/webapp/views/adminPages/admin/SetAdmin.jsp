<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/15/23
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Set</title>
</head>
<body>
<div>
    <form action="/superAdmin/setAdmin" method="post">
        <h3>Set Admin</h3>
        <div class="form-group">
            <label for="set_username">Username</label>
            <input type="text" class="form-control" id="set_username" name="set_username" placeholder="Enter username">
        </div>
        <button type="submit" class="btn btn-primary">set admin</button>
    </form>
</div>
</body>
</html>
