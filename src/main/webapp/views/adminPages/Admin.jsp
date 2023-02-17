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
ISSUES
<div>
    <button onclick="location.href='/admin/issue/update'">Get List Pt</button>
    <button onclick="location.href='/admin/issue/getList'">Delete Pt</button>
    <button onclick="location.href='/admin/issue/delete'">Set Pt</button>
    <button onclick="location.href='/admin/issue/create'">Set Pt</button>
</div>

</body>
</html>
