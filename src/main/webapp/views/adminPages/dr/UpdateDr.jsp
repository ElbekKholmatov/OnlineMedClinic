<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/15/23
  Time: 5:16 PM
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
    <form action="/admin/dr/update/*" method="post">
        <h3>Set Admin</h3>
        <div class="form-group">
            <input type="hidden" class="form-control" id="id" name="id" value="${doctor.getId()}">
            <label for="set_username">Username</label>
            <input type="text" class="form-control" id="set_username" name="set_username" value="${doctor.getUsername()}">
            <select class="form-select"   aria-label="select example" style="margin-top: 30px" id="specialization_id"
                    name="specialization_id">
                <option value="${doctor.getSpecializationID().getId()}">${doctor.getSpecializationID().getName()}</option>
                <c:forEach items="${specializations}" var="specialization">
                    <option value="${specialization.getId()}">${specialization.getName()}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">set admin</button>
    </form>
</div>
</body>
</html>