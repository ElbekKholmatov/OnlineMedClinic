<%--
  Created by IntelliJ IDEA.
  User: asror
  Date: 07/02/23
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignIn</title>
    <link rel="stylesheet" href="/resources/css/signIn.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>
<body>
<form method="post">
    <div class="reg">
        <h1>Register account</h1>
        <div>
            <input type="text" class="name" id="myDiv" placeholder="Firstname" name="firstName" onclick="my()"
                   required>
            <span id="firstName">${firstNameException}</span>
        </div>

        <div>
            <input type="text" class="name" placeholder="Lastname" name="lastName">
            <span>${lastNameException}</span>
        </div>

        <div>
            <input type="email" class="email" placeholder="Email" name="email" required>
            <span>${emailException}</span>
        </div>

        <div style="position: relative; padding: 0;">
            <input type="password" id="iPass" placeholder="Password" name="password" required>
            <span>${passwordException}</span>
            <i class="bi bi-eye-slash" id="pass" onclick="showPassword()"></i>
        </div>

        <div style="position: relative;">
            <input type="password" id="iRePass" placeholder="Repeat password" name="rPassword" required>
            <span>${passwordDoNotMatchException}</span>
            <i class="bi bi-eye-slash" id="rePass" onclick="showRePassword()"></i>
        </div>

        <div>
            <input type="submit" class="submit" value="SIGN IN">

            <p class="forgot"><a href="/home"> LogIn </a></p>
        </div>

        <script>

            function showPassword() {
                let icon = document.getElementById("pass");
                let input = document.getElementById("iPass");

                setClassType(input, icon);
            }

            function showRePassword() {
                let icon = document.getElementById("rePass");
                let input = document.getElementById("iRePass");

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

            function my() {
                let input = document.getElementById("myDiv");
                let span = document.getElementById("firstName");

                input.addEventListener('input', event => {
                    if (input.value.length < 3) {
                        input.style.borderColor = "red";
                        input.style.boxShadow = "0 0 10px 0px red";
                        span.innerHTML = "Fullname must be more than 3 letters";
                    }
                    if (input.value.length >= 3) {
                        input.style.borderColor = "#02bb02";
                        input.style.boxShadow = "0 0 10px 0px #02bb02";
                        span.innerHTML = "";
                    }

                });
                input.addEventListener('blur', event => {
                    input.style.boxShadow = "none";
                });
            }
        </script>
    </div>
</form>

</body>
</html>
