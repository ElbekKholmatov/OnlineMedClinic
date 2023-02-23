<%--
  Created by IntelliJ IDEA.
  User: asror
  Date: 21/02/23
  Time: 18:34
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

<header class="w-75 mx-auto mt-4 mb-0">
    <div class="logo">
        <a href="/home"><img src="/resources/images/images.png"
                             style="height: 74px; width: 154px; border-radius: 15%; margin-top: 12px" alt="img"></a>
    </div>

    <nav>
        <ul>
            <li>Home</li>
            <li data-bs-toggle="dropdown" aria-expanded="false">Actions
                <i class="dropdown-toggle ms-1"></i></li>
            <li>Link</li>
            <li>Language</li>
            <li>Settings</li>
        </ul>

        <c:choose>
            <c:when test="${firstName!=null}">
                <div>
                    <i class="bi bi-person" data-bs-toggle="dropdown"
                       aria-expanded="false"></i>
                    <div class="dropdown-menu">
                        <span><a class="dropdown-item" href="#">${firstName}</a></span>
                        <span><a class="dropdown-item" href="/user/order/show">Appointments</a></span>
                        <span>
                    <hr class="dropdown-divider">
                </span>
                        <span><a href="/logOut" class="dropdown-item bg-warning text-white">
                            Log out
                        </a></span>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <a href="/home" class="btn btn-primary" style="margin-right: -25px">Sign In</a>
            </c:otherwise>
        </c:choose>
    </nav>

    <div class="menu">
        <span></span>
        <span></span>
        <span></span>
    </div>
</header>


<form method="post">
    <div class="w-75 mx-auto">
        <select class="form-select" aria-label="select example" name="category">
            <option selected disabled>Choose a category</option>
            <c:forEach items="${categories}" var="category">
                <option value="${category.getId()}">${category.getName()}</option>
            </c:forEach>
        </select>
        <button class="mt-5 btn btn-primary" type="submit">
            Next
        </button>
    </div>
</form>
</body>
</html>
