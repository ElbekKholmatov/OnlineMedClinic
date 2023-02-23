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
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>
<form method="post">

    <div class="reg">
        <h1>Registration Form</h1>
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
            <input class="phoneNumber" placeholder="+998900000000" type="tel"
                   name="phoneNumber" required="" autocomplete="off" value="">
            <span>${phoneException}</span>
        </div>

        <div>
            <input placeholder="username" type="text"
                   name="username">
            <span>${usernameException}</span>
        </div>

        <div style="position: relative; padding: 0;">
            <input type="password" id="iPass" placeholder="Password" name="password" required>
            <i class="bi bi-eye-slash" id="pass" onclick="showPassword()"></i>

            <span>${passwordException}</span>
        </div>

        <%--        <div style="position: relative; padding: 0;">--%>
        <%--            <input type="password" id="iPass" placeholder="Password" name="rPassword" required>--%>
        <%--            <i class="bi bi-eye-slash" id="pass" onclick="showPassword()"></i>--%>

        <%--            <span>${passwordException}</span>--%>
        <%--        </div>--%>

        <div style="position: relative; padding: 0;">
            <input type="password" id="iRePass" placeholder="Repeat password" name="rPassword" required>
            <span>${passwordDoNotMatchException}</span>
            <i class="bi bi-eye-slash" id="pass" onclick="showRePassword()"></i>
        </div>

        <div>
            <input  placeholder="address" type="text"
                    name="address">
            <span>${addressException}</span>
        </div>

        <div>
            <input  placeholder="passport" type="text"
                    name="passport">
            <span>${passportException}</span>
        </div>

        <div>
            <input type="submit" class="submit" value="SIGN UP">

            <p class="forgot"><a href="/logIn"> LogIn </a></p>
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



    <%--    <div class="reg">--%>
    <%--        <h1>Register account</h1>--%>
    <%--        <div>--%>
    <%--            <input type="text" class="name" id="myDiv" placeholder="Firstname" name="firstName" onclick="my()"--%>
    <%--                   required>--%>
    <%--            <span id="firstName">${firstNameException}</span>--%>
    <%--        </div>--%>

    <%--        <div>--%>
    <%--            <input type="text" class="name" placeholder="Lastname" name="lastName">--%>
    <%--            <span>${lastNameException}</span>--%>
    <%--        </div>--%>

    <%--        <div>--%>
    <%--            <input class=" form-control phoneNumber" placeholder="" type="tel"--%>
    <%--                   name="phoneNumber" required="" autocomplete="off" value="+998">--%>
    <%--            <span>${phoneException}</span>--%>
    <%--        </div>--%>

    <%--        <div style="position: relative; padding: 0;">--%>
    <%--            <input type="password" id="iPass" placeholder="Password" name="password" required>--%>
    <%--            <span>${passwordException}</span>--%>
    <%--            <i class="bi bi-eye-slash" id="pass" onclick="showPassword()"></i>--%>
    <%--        </div>--%>

    <%--        <div style="position: relative;">--%>
    <%--            <input type="password" id="iRePass" placeholder="Repeat password" name="rPassword" required>--%>
    <%--            <span>${passwordDoNotMatchException}</span>--%>
    <%--            <i class="bi bi-eye-slash" id="rePass" onclick="showRePassword()"></i>--%>
    <%--        </div>--%>

    <%--        <div>--%>
    <%--            <input type="submit" class="submit" value="SIGN IN">--%>

    <%--            <p class="forgot"><a href="/home"> LogIn </a></p>--%>
    <%--        </div>--%>

    <%--        <script>--%>

    <%--            function showPassword() {--%>
    <%--                let icon = document.getElementById("pass");--%>
    <%--                let input = document.getElementById("iPass");--%>

    <%--                setClassType(input, icon);--%>
    <%--            }--%>

    <%--            function showRePassword() {--%>
    <%--                let icon = document.getElementById("rePass");--%>
    <%--                let input = document.getElementById("iRePass");--%>

    <%--                setClassType(input, icon);--%>
    <%--            }--%>

    <%--            function setClassType(input, icon) {--%>
    <%--                if (icon.className == "bi bi-eye-slash") {--%>
    <%--                    input.type = "text";--%>
    <%--                    icon.className = "bi bi-eye";--%>
    <%--                    icon.style.color = "red";--%>
    <%--                } else {--%>
    <%--                    input.type = "password";--%>
    <%--                    icon.className = "bi bi-eye-slash";--%>
    <%--                    icon.style.color = "rgb(0, 157, 255)";--%>
    <%--                }--%>
    <%--            }--%>

    <%--            function my() {--%>
    <%--                let input = document.getElementById("myDiv");--%>
    <%--                let span = document.getElementById("firstName");--%>

    <%--                input.addEventListener('input', event => {--%>
    <%--                    if (input.value.length < 3) {--%>
    <%--                        input.style.borderColor = "red";--%>
    <%--                        input.style.boxShadow = "0 0 10px 0px red";--%>
    <%--                        span.innerHTML = "Fullname must be more than 3 letters";--%>
    <%--                    }--%>
    <%--                    if (input.value.length >= 3) {--%>
    <%--                        input.style.borderColor = "#02bb02";--%>
    <%--                        input.style.boxShadow = "0 0 10px 0px #02bb02";--%>
    <%--                        span.innerHTML = "";--%>
    <%--                    }--%>

    <%--                });--%>
    <%--                input.addEventListener('blur', event => {--%>
    <%--                    input.style.boxShadow = "none";--%>
    <%--                });--%>
    <%--            }--%>
    <%--        </script>--%>
    <%--    </div>--%>
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
        border: 1px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
        padding: auto;

    }

    .reg {
        width: 700px;
        margin: 0 auto;
        padding: 3px;
        font-family: sans-serif;
        color: rgb(150, 149, 149);
        text-align: center;
    }

    h1 {
        color: white;
        margin: 10px auto;
    }

    div {
        width: 90%;
        margin: auto;
    }
    #pass{
        margin-right: 155px;
        margin-top: -5px;
    }

    input {
        height: 40px;
        margin-top: 10px;
        width: 90%;
        padding: 5px;
        border: 1px solid rgb(211, 210, 210);
        outline: none;
        border-radius: 9px;
        transition: 0.4s;
    }

    input:focus {
        outline: solid 0.5px rgb(1, 136, 255);
        box-shadow: 0 0 10px 0px rgb(1, 136, 255);
    }


    .submit {
        margin: 15px 78px;
        width: 410px;
        background-color: rgb(104, 104, 255);
        color: white;
        border: none;
        cursor: pointer;
    }

    a {
        color: rgb(80, 146, 233);
        cursor: pointer;
        text-decoration: none;
    }

    span {
        margin-left: 80px;
        display: block;
        font-size: 10px;
        color: red;
        width: 100%;
    }

    i {
        margin-left: -200px;
        position: absolute;
        font-size: 19px;
        cursor: pointer;
        right: -100px;
        top: 28px;
        color: rgb(0, 157, 255);
    }
</style>

</body>
</html>