<%@ page import="dev.sheengo.onlinemedclinic.domains.Doctor" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Doctor Profile</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>

<div style="text-align: center"> Doctor Profile Page</div>

<div>
    <button class="btn btn-danger"><a href="/dr/main" style="text-decoration: none; color: white;">Back</a></button>
</div>

<c:if test="${doctor == null}">
    <h1>Doctor not found</h1>
</c:if>

<c:if test="${user != null}">
    <div>
            <%--        D:\PDP\B22\Projects\5Jakarta\filesForBooklib\upload\1676280413576.png--%>
            <%--                            /resources/images/2.png--%>
        <img src="/resources/images/2.png" alt="user image" width="200" height="200" style="border-radius: 50%">
        <h1>Doctor Profile</h1>
        <h2>Doctor Name: ${user.getFirstName()} &nbsp ${user.getLastName()}</h2>
        <h2>Doctor Speciality: ${doctor.getSpecialization().getName()}</h2>
        <h2>Doctor info: ${doctor.getInfo()}</h2>
        <h2>Doctor Phone: ${user.getPhone()}</h2>
        <h2>Doctor Address: ${user.getAddress()}</h2>
    </div>

    <div>
<%--        <button class="btn btn-warning"><a href="/dr/edit">Edit</a></button>--%>
        <button class="btn btn-warning"><a href="/dr/main" style="text-decoration: none; color: white;">Edit</a></button>
    </div>

    <div>
        <button class="btn btn-warning"><a href="/dr/edit">Edit</a></button>
    </div>
</c:if>

</body>
</html>
