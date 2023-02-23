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
        select {
            appearance: none;
            outline: 0;
            box-shadow: none;
            flex: 1;
            padding: 0 1em;
            color: #fff;
            background-color: #222222;
            background-image: none;
            cursor: pointer;
            border: 1px solid #f39c12;
            border-bottom-left-radius: 5px;
            border-top-left-radius: 5px;
        }
        .select {
            position: relative;
            padding: 20px;
            display: flex;
            width: 20em;
            height: 3em;
            overflow: hidden;
        }
        select::-ms-expand {
            display: none;
        }
        .select::after {
            content: '\25BC';
            top: 0;
            right: 0;
            padding: 1em;
            background-color: #222222;
            transition: .25s all ease;
            pointer-events: none;
            border-bottom-right-radius: 5px;
            border-top-right-radius: 5px;
            border: 1px solid #f39c12;
        }
        .select:hover::after {
            color: #f39c12;
        }
        .button {
            font-weight: bold;
            color:  black;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 10px;
            background: white;
            margin-left: 20px;
        }
    </style>
</head>
<body>
<form method="post">
    <div class="select">
        <select class="form-select" aria-label="select example" name="category">
            <option selected disabled>Choose a category</option>
            <c:forEach items="${categories}" var="category">
                <option value="${category.getId()}">${category.getName()}</option>
            </c:forEach>
        </select>
    </div>
    <button class="button" type="submit">
        Next
    </button>
</form>
</body>
</html>