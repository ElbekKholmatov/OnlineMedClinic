<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/16/23
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Diseases List</title>
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
<h1>List of diseases</h1>
<div>
    <c:forEach items="${diseases}" var="disease">
        <h2>${disease.getName()}</h2>
        <div style="border-bottom: 1px solid gray;padding-bottom: 18px;padding-left: 10px">
            <button class="btn btn-warning" type="button" onclick="location.href='/admin/disease/update/${disease.getId()}'">Update</button>
            <button class="btn btn-warning" type="button" onclick="location.href='/admin/disease/delete/${disease.getId()}'">Delete</button>
        </div>
    </c:forEach>
</div>
</body>
</html>
