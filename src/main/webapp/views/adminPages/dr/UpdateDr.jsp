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
    <title>Update Doctor</title>
</head>
<body>
<div>
    <form action="/admin/dr/update/*" method="post">
        <h3>Update Doctor</h3>
        <div class="form-group">
            <input type="hidden" class="form-control" id="id" name="id" value="${user.getId()}">
            <div>
                <h2>${user.getUsername()}</h2>
            </div>
            <div>
                <textarea class="form-control" id="info" name="info" rows="3">${doctor.getInfo()}</textarea>
            </div>
            <div>
                <select class="form-select" aria-label="select example" style="margin-top: 30px" id="specialization_id"
                        name="specialization_id">
                    <option value="${doctor.getSpecialization().getId()}">${doctor.getSpecialization().getName()}</option>
                    <c:forEach items="${specializations}" var="specialization">
                        <option value="${specialization.getId()}">${specialization.getName()}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Update Doctor</button>
    </form>
</div>
</body>
</html>
