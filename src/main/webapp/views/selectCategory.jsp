<%--
  Created by IntelliJ IDEA.
  User: asror
  Date: 21/02/23
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>
<form method="post">
    <select class="form-select" aria-label="select example" name="category">
        <option selected disabled>Choose a category</option>
        <c:forEach items="${categories}" var="category">
            <option value="${category.getId()}">${category.getName()}</option>
        </c:forEach>
    </select>
    <button class="btn btn-primary" type="submit">
        Next
    </button>
</form>
</body>
</html>
