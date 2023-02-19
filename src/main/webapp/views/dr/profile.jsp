<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 16.02.2023
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Doctor Profile</title>
</head>
<body>
Doctor Profile
<%--<c:if test="${doctor != null}">--%>
    <div>
        <h1>Welcome dear : ${doctor.getName()}</h1>
        <div><h2>${doctor.getInfo()}</h2></div>
        <div><h2>${doctor.getSpecialization()}</h2></div>
    </div>
<%--</c:if>--%>

<c:if test="${doctor == null}">
    <h1>Doctor not found</h1>
</c:if>


</body>
</html>
