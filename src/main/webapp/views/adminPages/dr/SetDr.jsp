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
    <jsp:include page="/fragments/css.jsp"/>
    <style>
        body{
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px;
        }
        form{
            padding: 20px;
            border: 1px solid whitesmoke;
            border-radius: 8px;
            box-shadow: 7px 7px 7px 7px #9eeaf9;
        }
        h1{
            padding-left: 550px;
            font-family: "DejaVu Sans Light";
            color: #0a53be;
        }
        label{
            padding-top: 15px;
            font-family: "DejaVu Sans Light";
            padding-left: 2px;
        }
    </style>
</head>
<body>
<div>
    <form action="/admin/dr/create" method="post">
        <h1>Set Doctor</h1>
        <div class="form-group">
            <div>
                <label for="set_username">Enter Username</label>
            </div>
            <div style="padding-bottom: 20px">
                <input type="text" class="form-control" id="set_username" name="set_username" placeholder="Username">
            </div>
            <div>
                <textarea class="form-control" id="info" name="info" rows="3"></textarea>
            </div>
            <div>
                <label for="specialization_id">Choose Specialization</label>
            </div>
            <div style="padding-bottom: 10px">
                <select class="form-select" id="specialization_id"
                        name="specialization_id">
                    <option value="0">Choose a category</option>
                    <c:forEach items="${specializations}" var="specialization">
                        <option value="${specialization.getId()}">${specialization.getName()}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Set Doctor</button>
    </form>
</div>
</body>
</html>
