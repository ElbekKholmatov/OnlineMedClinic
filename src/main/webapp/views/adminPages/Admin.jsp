<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/15/23
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AdminPage</title>
    <style>
        body{
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px 80px;
        }
        .btn-gradient-2 {
            background: linear-gradient(white, white) padding-box,
            linear-gradient(to right, darkblue, darkorchid) border-box;
            border-radius: 50em;
            border: 4px solid transparent;
        }
        .parent {
            gap: 1rem;
            padding: 10px;
        }
        .btn-gradient-2 {
            position: relative;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            font-size: 1em;
            color: darkblue;
            padding: 0.5rem 1rem;
            cursor: pointer;
        }
        h3{
            padding-left: 10px;
            font-style: italic;
            color: #1a1e21;
            font-family: "DejaVu Sans Light";
        }
        h1{
            position: relative;
            left: 550px;
        }
    </style>
</head>
<body>
<h1>Admin Page</h1>
<h3>DOCTORS</h3>
<div class="parent">
    <button class="btn-gradient-2" onclick="location.href='/admin/dr/getList'">Get List Dr</button>
    <button class="btn-gradient-2" onclick="location.href='/admin/dr/create'">Set Dr</button>
</div>
<h3>SPECIALIZATIONS</h3>
<div class="parent">
    <button class="btn-gradient-2" onclick="location.href='/admin/specialization/getList'">Get List S</button>
    <button class="btn-gradient-2" onclick="location.href='/admin/specialization/create'">Create S</button>
</div>
<h3>DISEASES</h3>
<div class="parent">
    <button class="btn-gradient-2" onclick="location.href='/admin/disease/getList'">Get disease List</button>
    <button class="btn-gradient-2" onclick="location.href='/admin/disease/create'">Set disease</button>
</div>

</body>
</html>