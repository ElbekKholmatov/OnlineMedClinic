<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/15/23
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AdminPage</title>
</head>
<body>
<h1>Admin Page</h1>
DOCTORS
<div>
    <button onclick="location.href='/admin/dr/getList'">Get List Dr</button>
    <button onclick="location.href='/admin/dr/create'">Set Dr</button>
</div>
SPECIALIZATIONS
<div>
    <button onclick="location.href='/admin/specialization/getList'">Get List S</button>
    <button onclick="location.href='/admin/specialization/create'">Create S</button>
</div>
DISEASES
<div>
    <button onclick="location.href='/admin/disease/getList'">Get disease List</button>
    <button onclick="location.href='/admin/disease/create'">Set disease</button>
</div>

</body>
</html>
