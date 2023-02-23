<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/15/23
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    @import url(https://fonts.googleapis.com/css?family=PT+Sans);
    * {
        box-sizing: border-box;
    }
    html, body {
        margin: 0;
        padding: 0;
    }
    body {
        font-family: 'PT Sans', Arial, Verdana;
        background-color: #eee;
    }
    h1 {
        text-align: center;
        font-size: 48px;
        text-transform: uppercase;
        letter-spacing: 3px;
        color: #222;
    }
    .menu {
        list-style: none;
        margin: 0;
        padding: 0;
        width: 100%;
        height: 120px;
        margin: auto;
        position: relative;
        background-color: #2c3e50;
        z-index: 7;
    }
    .menu li {
        float: left;
        width: 25%;
        height: 100%;
        margin: 0;
        padding: 0;
    }
    .menu a {
        display: flex;
        width: 100%;
        height: 100%;
        justify-content: center;
        align-items: center;
        color: #fff;
        text-decoration: none;
        position: relative;
        font-size: 18px;
        z-index: 9;
    }
    a.active {
        background-color: #e74c3c;
        pointer-events: none;
    }
    li.slider {
        width: 25%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0;
        background-color: #e74c3c;
        z-index: 8;
        transition: left .4s, background-color .4s;
    }
    .menu li:nth-child(1):hover ~ .slider, .menu li:nth-child(1):focus ~ .slider, .menu li:nth-child(1):active ~ .slider {
        left: 0;
        background-color: #3498db;
    }
    .menu li:nth-child(2):hover ~ .slider, .menu li:nth-child(2):focus ~ .slider, .menu li:nth-child(2):active ~ .slider {
        left: 25%;
        background-color: #9b59b6;
    }
    .menu li:nth-child(3):hover ~ .slider, .menu li:nth-child(3):focus ~ .slider, .menu li:nth-child(3):active ~ .slider {
        left: 50%;
        background-color: #e67e22;
    }
    .menu li:nth-child(4):hover ~ .slider, .menu li:nth-child(4):focus ~ .slider, .menu li:nth-child(4):active ~ .slider {
        left: 75%;
        background-color: #16a085;
    }

</style>
<head>
    <title>SuperAdminPage</title>
</head>
<body>
<div>
<%--    <button onclick="location.href='#'">Logout</button>--%>
<%--    <button onclick="location.href='/superAdmin/setAdmin'">Set Admin</button>--%>
<%--    <button onclick="location.href='/superAdmin/deleteAdmin'">Delete Admin</button>--%>
<%--    <button onclick="location.href='/superAdmin/getListDR'">List of Admins</button>--%>
    <h1>Responsive Menu Effect
        hover on menu items!
    </h1>

    <ul class="menu">
        <li><a href="/superAdmin/setAdmin" class="active">Set Admin</a></li>
        <li><a href="/superAdmin/deleteAdmin">Delete Admin</a></li>
        <li><a href="/superAdmin/getListDR">List of Admins</a></li>
        <li><a href="#">Logout</a></li>
        <li class="slider"></li>
    </ul>
</div>


</body>
</html>
