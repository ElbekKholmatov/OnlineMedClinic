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
        body {
            background: linear-gradient(90deg, #49dfdd, #479fbe);
            padding: 50px;
        }

        .container {
            position: relative;
            padding: 0 10%;
        }

        .wl-p {
            position: relative;
            text-align: center;
            font-size: 30px;
            font-weight: 600;
            margin: 30px 0 70px 0;
            color: darkblue;
        }

        .save-category-btn {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #d2d2d2;
            font-size: 18px;
            cursor: pointer;
            background-color: #0d6efd;
        }
        .category-name{
            padding-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="container">
    <p class="wl-p">Delete a specialization</p>
    <div class="addcategory">
        <form action="/admin/specialization/delete/${specialization.getId()}" method="post">
            <div class="category-name" style="font-size: 30px"><i>Do you agree to delete a specialization
                <b>${specialization.getName()}</b>?</i></div>
            <div>
                <input type="hidden" id="id" name="id" value="${specialization.getId()}"/>
                <button type="submit" class="save-category-btn">Yes, I agree</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
