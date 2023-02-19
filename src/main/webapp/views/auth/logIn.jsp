<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="/resources/css/login.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>

<body>
<form method="post" action="/logIn">
    <div class="login">
        <h1>Account Login</h1>

        <div>
            <input type="text" style="outline: none; border-radius: 9px" id="border" value="${username}"
                   placeholder="Username" name="username" required>
            <span>${exception}</span>
        </div>

        <div class="password" style="position: relative; padding: 0;">
            <input type="password" id="iPass" value="${password}" style="outline: none; border-radius: 9px"
                   placeholder="Password" name="password" required>
            <span>${exception}</span>
            <i class="bi bi-eye-slash" id="pass" onclick="showPassword()" style="position: absolute;
                font-size: 19px;
                cursor: pointer;
                right: 135px;
                top: 28px;
                color: rgb(0, 157, 255);"></i>
        </div>
        <input type="submit" style="border-radius: 9px" class="submit" value="Log In">
        <input type="hidden" name="next" value="${next}">

        <p>Forgot <a href="/views/auth/signUp.jsp"> Username / Password?</a></p>
        <p class="forgot"> Create an account? <a href="/signUp"> Sign up </a></p>
    </div>
</form>

<style>
    body {
        background-image: linear-gradient(-225deg, #E3FDF5 0%, #6acdf6 80%);
        background-image: linear-gradient(to top, #a8edea 0%, #629ac4 80%);
        background-attachment: fixed;
        background-repeat: no-repeat;
    }

    form {
        background-color: rgba(255, 255, 255, 0.13);
        position: absolute;
        transform: translate(-50%, -50%);
        top: 50%;
        left: 50%;
        border-radius: 10px;
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
        padding: 20px 50px 35px 35px;
    }

    .login {
        width: 600px;
        margin-left: auto;
        margin-right: auto;
        padding: 20px;
        font-family: sans-serif;
        color: rgb(150, 149, 149);
    }

    h1 {
        color: white;
        margin: 28px 170px;
    }

    input {
        font-size: 20px;
        margin: 5px 78px;
        padding: 24px;
        border: 1px solid rgb(211, 210, 210);
        width: 360px;
        outline: none;
    }

    .password {
        position: relative;
        padding: 0;
    }

    span {
        display: block;
        margin-left: 90px;
        font-size: 10px;
        color: red;
        width: 100%;
    }

    .submit {
        margin: 20px 78px;
        padding: 21px;
        width: 410px;
        background-color: rgb(2, 101, 252);
        color: white;
        border: none;
        cursor: pointer;
    }

    p {
        color: white;
        margin: 30px 170px 0;
    }

    .forgot {
        margin-left: 178px;
        margin-top: 10px;
    }

    a {
        text-decoration: none;
        color: rgb(1, 110, 253);
    }

    i {
        position: absolute;
        font-size: 19px;
        cursor: pointer;
        right: -100px;
        top: 28px;
        color: rgb(4, 153, 246);
    }


</style>
<script>
    function showPassword() {
        let icon = document.getElementById("pass");
        let input = document.getElementById("iPass");

        setClassType(input, icon);
    }

    function setClassType(input, icon) {
        if (icon.className == "bi bi-eye-slash") {
            input.type = "text";
            icon.className = "bi bi-eye";
            icon.style.color = "red";
        } else {
            input.type = "password";
            icon.className = "bi bi-eye-slash";
            icon.style.color = "rgb(0, 157, 255)";
        }
    }
</script>
</body>

</html>