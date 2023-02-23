<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/16/23
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Create Disease</title>
    <jsp:include page="/fragments/css.jsp"/>
    <style>
        body{
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px;
        }
        form{
            left: 70px;
        }
        div{
            margin: 25px;
        }
        input, select{
            border-radius: 10px;
            border: 1px solid #0a53be;
            margin: 10px;
            padding: 10px;
        }
        .bttn{
            left: 10px;
        }
        label{
            font-family: "DejaVu Sans Light";
        }
    </style>
</head>
<body>
<form action="/admin/disease/create" class="form-control" method="post">
    <div>
        <label for="name">Name: </label>
        <input type="text" id="name" name="name" placeholder="name"/>
    </div>
    <div>
        <label for="description">Description: </label>
        <input type="text" id="description" name="description" placeholder="description"/>
    </div>
    <div>
        <select class="form-select"   aria-label="select example" style="margin-top: 30px" id="specialization_id"
            name="specialization_id">
        <option value="0">Choose a category</option>
        <c:forEach items="${specializations}" var="specialization">
            <option value="${specialization.getId()}">${specialization.getName()}</option>
        </c:forEach>
    </select>
    </div>
    <div class="bttn">
        <button type="submit" class="btn btn-primary">submit</button>
    </div>
</form>
</body>
</html>
