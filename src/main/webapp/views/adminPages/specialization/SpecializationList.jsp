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
    <title>Specialization List</title>
    <jsp:include page="/fragments/css.jsp"/>
    <style>
        body{
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px 80px;
        }
        h1{
            padding-left: 550px;
            font-family: "DejaVu Sans Light";
            color: #0a53be;
        }
        h2{
            padding-top: 15px;
            font-family: "DejaVu Sans Light";
            padding-left: 10px;
        }

    </style>
</head>
<body>
<h1>Specialization List</h1>
<c:forEach var="specialization" items="${specializations}">
<input type="hidden" name="id" id="id" value="${specialization.getId()}">
    <h2><i>- ${specialization.getName()}</i></h2>
    <div style="border-bottom: 1px solid gray;padding-bottom: 18px;padding-left: 10px">
        <a class="btn btn-warning" href="/admin/specialization/update/${specialization.getId()}">Edit</a>
        <a class="btn btn-warning" href="/admin/specialization/delete/${specialization.getId()}">Delete</a>
    </div>
</c:forEach>
</body>
</html>

