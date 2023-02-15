<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <input type="text" style="outline: none; border-radius: 9px" id="border" value="${username}" placeholder="Username" name="username" required>
            <span>${exception}</span>
        </div>

        <div class="password" style="position: relative; padding: 0;">
            <input type="password" id="iPass" value="${password}" style="outline: none; border-radius: 9px" placeholder="Password" name="password" required>
            <span>${exception}</span>
            <i class="bi bi-eye-slash" id="pass" onclick="showPassword()" style="position: absolute;
                font-size: 19px;
                cursor: pointer;
                right: 135px;
                top: 28px;
                color: rgb(0, 157, 255);"></i>
        </div>
        <input type="submit" style="border-radius: 9px" class="submit" value="Log In">

        <p>Forgot <a> Username / Password?</a></p>
        <p class="forgot"> Create an account? <a href="/signUp"> Sign up </a></p>
    </div>
</form>
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