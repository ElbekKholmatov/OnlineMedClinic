<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/16/23
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
    <jsp:include page="/fragments/css.jsp"/>
    <style>
        body{
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px 80px;
        }
        form{
            margin: 30px;
            left: 500px;
        }
        h1{
            padding-left: 700px;
            font-family: "DejaVu Sans Light";
            color: #0a53be;
        }
        input, select{
            border-radius: 12px;
            border: 1px solid #0a53be;
            margin: 20px;
            padding: 15px 40px;
            font-family: "DejaVu Sans Light";
            font-size: 20px;
        }
        label{
            font-family: "DejaVu Sans Light";
            font-size: 20px;
        }
    </style>
</head>
<body>
<h1>Edit Disease Details</h1>
<form action="/admin/disease/update/*" method="post">
<input type="hidden" name="id" value="${disease.getId()}"/>
    <label for="name">Name: </label>
    <br>
    <input type="text" id="name" name="name" value="${disease.getName()}"/>
    <br>
    <label for="description">Description: </label>
    <br>
    <input type="text" id="description" name="description" value="${disease.getDescription()}"/>
    <br>
    <label>Specializations: </label>
    <select class="form-select" aria-label="select example" style="margin-top: 30px" id="specialization_id"
            name="specialization_id">
        <option value="${disease.getSpecialization().getId()}">${disease.getSpecialization().getName()}</option>
        <c:forEach items="${specializations}" var="specialization">
            <c:if test="${specialization.getId() != disease.getSpecialization().getId()}">
                <option value="${specialization.getId()}">${specialization.getName()}</option>
            </c:if>
        </c:forEach>
    </select>
    <br>
    <input type="submit" style="background-color: #0d6efd; border: 2px solid whitesmoke; border-radius: 20px" value="submit"/>
</form>
</body>
</html>
