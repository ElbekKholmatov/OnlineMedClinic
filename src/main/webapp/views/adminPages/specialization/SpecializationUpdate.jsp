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
<form action="/admin/specialization/update/${specialization.getId()}" method="post">
    <table>
        <tr>
            <td>Specialization ID</td>
            <td><input type="hidden" name="id" value="${specialization.getId()}"/></td>
        </tr>
        <tr>
            <td>Specialization Name</td>
            <td><input type="text" name="name" value="${specialization.getName()}"/></td>
        </tr>
        <tr>
            <td>Specialization Description</td>
            <td><input type="text" name="description" value="${specialization.getDescription()}"/></td>
        </tr>
    </table>
    <input type="submit" value="Update"/>
</form>
</body>
</html>

