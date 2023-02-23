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
    <title>AdminList</title>
    <style>
        body {
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px;
        }

    </style>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

</head>
<body>
<div >

    <%--    <c:forEach var="admin" items="${admins}">--%>
    <%--        <p>${admin.getId()} <==> ${admin.getUsername()}</p>--%>
    <%--    </c:forEach>--%>
    <div class="container" style="width: 80%;margin-left: 10%">
        <h2 style="text-align: center; ">All Super Admins </h2>
        <p> </p>
        <table class="table table-striped" style="margin-top: 10px">
            <thead style="background-color: #bfe2e9">
            <tr>
                <th scope="col"> First Name</th>
                <th scope="col"> Last Name</th>
                <th scope="col"> Phone Number</th>
                <th scope="col"> Username</th>
                <th scope="col"> Address</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${admins}" var="admin">
                <tr>
                    <td>${admin.getFirstName()}</td>
                    <td>${admin.getLastName()}</td>
                    <td>${admin.getPhone()}</td>
                    <td>${admin.getUsername()}</td>
                    <td>${admin.getAddress()}</td>

                    <td><fmt:formatDate type="date" value="${admin.getCreatedAt()}" var="fd"/>
                            ${fd}
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
