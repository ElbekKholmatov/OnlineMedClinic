<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2/17/23
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
    <style>
        body{
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px;
        }

        .login-page {
            width: 360px;
            padding: 15px;
            margin: auto;
            background-color: transparent;
            border-radius: 10px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }

        .form {
            position: relative;
            z-index: 1;
            max-width: 360px;
            margin: 20px auto 70px;
            padding: 50px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 20px;
        }

        .form input[type="text"],
        .form input[type="password"] {
            font-family: 'Roboto', sans-serif;
            outline: none;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
            border-radius: 20px;
            background-color: rgba(255, 255, 255, 0.7);
        }

        .form button {
            font-family: 'Roboto', sans-serif;
            text-transform: uppercase;
            outline: none;
            background-color: #2196F3;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
            cursor: pointer;
            border-radius: 20px;
        }

        .form button:hover,
        .form button:active,
        .form button:focus {
            background-color: #1976D2;
        }

        .form h2 {
            color: #333333;
            font-size: 28px;
            margin: 0 0 30px;
        }
    </style>
</head>
<body>
<div class="login-page">
<form class="form" action="/admin/specialization/create" class="form-control" method="post">
    <h2>Create Specialization</h2>
    <input type="text" name="name" placeholder="Name"/>
    <input type="text" name="description" placeholder="Description"/>
    <button type="submit">submit</button>
</form>
</div>
</body>
</html>