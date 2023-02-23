<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/16/23
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>


<html>
<head>
    <title>Admin List</title>
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
<h1>Doctors List</h1>
<form action="/admin/dr/getList" method="post">
    <c:forEach items="${doctors}" var="doctor">
        <h2><i>- ${doctor.getUsername()}</i></h2>
        <div style="border-bottom: 1px solid gray;padding-bottom: 18px;padding-left: 10px">
            <a class="btn btn-warning" href="/admin/dr/update/${doctor.getId()}">Edit</a>
            <a class="btn btn-warning" href="/admin/dr/delete/${doctor.getId()}">Delete</a>
        </div>
    </c:forEach>
</form>
</body>
</html>