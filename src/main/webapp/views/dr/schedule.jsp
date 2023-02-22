<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.02.2023
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Schedule</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">

</head>
<body>
<div>
    <h1>List of all orders of all times</h1>
</div>

<div>
    <button class="btn btn-danger"><a href="/dr/main" style="text-decoration: none; color: white;">Back</a></button>
</div>

<div>
    <table class="table table-striped">
        <tr>
            <th>User ID</th>
            <th>User first name</th>
            <th>User last name</th>
            <th>Order Status</th>
<%--            <th>Actions</th>--%>
        </tr>

        <c:if test="${orders.size() == 0}">
            <tr>
                <td colspan="4">No orders found (orders size is 0)</td>
            </tr>
        </c:if>

        <c:if test="${orders.size() != 0}">
            <c:forEach var="order" items="${orders}">
                <tr>
                    <td>${order.getUser().getId()}</td>
                    <td>${order.getUser().getFirstName()}</td>
                    <td>${order.getUser().getLastName()}</td>
                    <td>${order.getStatus().toString()}</td>
<%--                    <td>--%>
<%--                        <form action="/admin/order" method="post">--%>
<%--                            <input type="hidden" name="orderId" value="${order.getId()}">--%>
<%--                            <input type="hidden" name="action" value="changeStatus">--%>
<%--                            <input type="hidden" name="status" value="ACCEPTED">--%>
<%--                            <input type="submit" value="Edit">--%>
<%--                        </form>--%>
<%--                    </td>--%>
                </tr>
            </c:forEach>
            OverAll Orders count is ${orders.size()}
        </c:if>
    </table>
</div>

<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>
