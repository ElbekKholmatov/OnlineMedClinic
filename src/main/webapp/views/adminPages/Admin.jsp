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
DR
<div>
    <button onclick="location.href='/admin/dr/getListDr'">Get List Dr</button>
    <button onclick="location.href='/admin/dr/deleteDr'">Delete Dr</button>
    <button onclick="location.href='/admin/dr/setDr'">Set Dr</button>
</div>
SPECIALIZATIONS
<div>
    <button onclick="location.href='/admin/specialization/getList'">Get List S</button>
    <button onclick="location.href='/admin/specialization/deleteSpecialization'">Delete S</button>
    <button onclick="location.href='/admin/specialization/create'">Create S</button>
</div>
diseaseS
<div>
<%--    <button onclick="location.href='/admin/disease/update'">Update disease</button>--%>
    <button onclick="location.href='/admin/disease/getList'">Get disease List</button>
    <button onclick="location.href='/admin/disease/delete'">Delete disease</button>
    <button onclick="location.href='/admin/disease/create'">Set disease</button>
</div>

</body>
</html>