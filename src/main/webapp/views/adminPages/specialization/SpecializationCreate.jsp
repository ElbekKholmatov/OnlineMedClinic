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
<form action="/admin/specialization/create" class="form-control" method="post">
    name: <input type="text" name="name" placeholder="name"/>
    description: <input type="text" name="description" placeholder="description"/>
    <button type="submit">submit</button>
</form>
</body>
</html>
