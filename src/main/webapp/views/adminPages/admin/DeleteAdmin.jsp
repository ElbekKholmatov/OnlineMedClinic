<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/15/23
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Delete Admin</title>
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
            padding-left: 700px;
            font-family: "DejaVu Sans Light";
            color: #0a53be;
        }
        label{
            padding-top: 15px;
            padding-bottom: 15px;
            font-family: "DejaVu Sans Light";
            padding-left: 2px;
        }
    </style>
</head>
<body>
<div>
    <form action="/superAdmin/deleteAdmin" method="post">
        <h1>Remove Admin</h1>
        <div class="form-group">
            <div>
                <label for="specialization_id">Select admin</label>
            </div>
            <div style="padding-bottom: 20px">
                <select class="form-select" id="delete_username"
                        name="delete_username">
                    <option selected>select admin</option>
                    <c:forEach items="${admins}" var="admin">
                        <option value="${admin.getUsername()}">${admin.getUsername()}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">remove admin</button>
    </form>
</div>

</body>
</html>
