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
    <title>Set Doctor</title>
</head>
<body>
<div>
    <form action="/admin/dr/create" method="post">
        <h3>Set Doctor</h3>
        <div class="form-group">
            <div>
                <label for="set_username">Enter Username</label>
            </div>
            <div>
                <input type="text" class="form-control" id="set_username" name="set_username" placeholder="Enter username">
            </div>
            <div>
                <textarea class="form-control" id="info" name="info" rows="3"></textarea>
            </div>
            <div>
                <label for="specialization_id">Choose Specialization</label>
            </div>
            <div>
                <select class="form-select" id="specialization_id"
                        name="specialization_id">
                    <option value="0">Choose a category</option>
                    <c:forEach items="${specializations}" var="specialization">
                        <option value="${specialization.getId()}">${specialization.getName()}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">set admin</button>
    </form>
</div>
</body>
</html>
