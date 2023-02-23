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
        <div class="input-group date" id="datepicker">
            <label for="date" class="form-label">Sanani tanlang: &nbsp&nbsp </label>
            <input type="date" id="date" name="day" placeholder="02/22/2023"/>
            <i class="fa fa-calendar"></i>
            <button type="submit" href="/dr/daily">Submit</button>
        </div>
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
            <th>Visit Time</th>
            <th>Order Status</th>
            <th>Change Status</th>
            <th>&nbspComment&nbsp</th>
        </tr>


        <c:if test="${orders.size() != 0}">
            <% int count = 0; %>
            <c:forEach var="order" items="${orders}">
                <c:if test="${order.getStatus().toString() == 'ORDERED'}">
                    <c:set var="message" value="Yangi"/>
                </c:if>
                <c:if test="${order.getStatus().toString() == 'IN_TREATMENT'}">
                    <c:set var="message" value="Davolanmoqda"/>
                </c:if>
                <c:if test="${order.getStatus().toString() == 'NO_ACTION'}">
                    <c:set var="message" value="Davolanib bolgan"/>
                </c:if>
                <tr>
                    <td><%=++count%>
                    </td>
                    <td>${order.getUser().getFirstName()}</td>
                    <td>${order.getUser().getLastName()}</td>
                    <td>${String.format("%02d:%02d", order.getVisitTime().getHour(), order.getVisitTime().getMinute())}</td>
                    <td>${message}
                    </td>
                    <td>
                        <form method="post" action="/dr/daily">
                            <div class="group">
                                <select class="form-select" style="width: 150px;"
                                        name="change_status">
                                    <option selected>Tanlang</option>
                                    <option value="ORDERED">Yangi</option>
                                    <option value="IN_TREATMENT">Davolanmoqda</option>
                                    <option value="NO_ACTION">Davolanib bolgan</option>
                                </select>
                                <button type="submit" class="btn btn-primary">Change</button>
                                <input type="hidden" name="changedOrderId" value="${order.getId()}">
                            </div>
                        </form>
                    </td>
                    <td>
                        <form method="post" action="/dr/daily">
                            <div class="group">
                                <input type="text" name="comment" placeholder="Comment">
                                <button type="submit" class="btn btn-primary">Comment</button>
                                <input type="hidden" name="commentedOrderId" value="${order.getId()}">
                            </div>
                        </form>
                    </td>
                </tr>

            </c:forEach>
        </c:if>
    </table>
</div>

<c:if test="${orders.size() == 0}">

    <div colspan="4" style="text-align: center; color: darkred; font-size: 25px"><strong>Bu sanada sizga yozilgan
        bemorlar
        hozircha mavjud
        emas !!!</strong></div>

</c:if>

<script src="/views/dr/date.js"></script>
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>
