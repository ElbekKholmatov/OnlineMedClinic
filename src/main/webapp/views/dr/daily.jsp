<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.02.2023
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Daily</title>

    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">
</head>
<body>

<div>
    <h1>List of you Daily orders</h1>
</div>

<div>
    <button class="btn btn-danger"><a href="/dr/main" style="text-decoration: none; color: white;">Back</a></button>
</div>

<hr>
<div>
    <form action="/dr/daily" method="get">
        <div>
            <div class="input-group date" id="datepicker">
                <label for="date" class="form-label">Sanani tanlang: </label>
                <input type="date" id="date" name="day" placeholder="02/22/2023"/>
                <i class="fa fa-calendar"></i>
            </div>
        </div>
        <button type="submit" href="/dr/daily">Submit</button>
    </form>
</div>

<hr>

<div style="text-align: center; color:coral">${day} &nbsp &nbsp sanadagi orderlaringiz:</div>


<div>
    <table class="table table-striped">
        <tr>
            <th> №</th>
            <th>Patient first name</th>
            <th>Patient last name</th>
            <th>Order Status</th>
            <th>Comment</th>
        </tr>

        <c:if test="${orders.size() == 0}">
            <tr>
                <td colspan="4">No orders found (orders size is 0)</td>
            </tr>
        </c:if>


        <c:if test="${orders.size() != 0}">
            <% int count = 0; %>
            <c:forEach var="order" items="${orders}">
                <tr>
                    <td><%=++count%>
                    </td>
                    <td>${order.getUser().getFirstName()}</td>
                    <td>${order.getUser().getLastName()}</td>
                    <td>${order.getStatus().toString()}</td>
                    <td>
                            <%--                        <form action="/dr/daily" method="post">--%>
                            <%--                            <input type="hidden" name="orderId" value="${order.getId()}">--%>
                            <%--                            <input type="button" name="action" value="changeStatus">--%>
                            <%--                            <input type="hidden" name="status" value="COMMENTED">--%>
                            <%--                            <input type="submit" value="comment">--%>
                            <%--                        </form>--%>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal" data-bs-whatever="${order.getUser().getFirstName()}">
                            Comment
                        </button>

                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Comment on treatment</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="mb-3">
                                                <label for="recipient-name" class="col-form-label">Recipient:</label>
                                                <input type="text" class="form-control" id="recipient-name">
                                            </div>
                                            <div class="mb-3">
                                                <label for="message-text" class="col-form-label">Message:</label>
                                                <textarea class="form-control" id="message-text"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                        </button>
                                        <button type="button" class="btn btn-primary">Ok</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>

            </c:forEach>
        </c:if>
    </table>
</div>

OverAll Orders count is ${orders.size()}

<script src="/views/dr/date.js"></script>
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>
