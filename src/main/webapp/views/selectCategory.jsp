<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <select class="form-select" aria-label="select example" name="category">
        <option selected disabled>Choose a category</option>
        <c:forEach items="${categories}" var="category">
            <option value="${category.getId()}">${category.getName()}</option>
        </c:forEach>
        <button class="btn btn-primary">Next</button>
    </select>
</form>
</body>
</html>
