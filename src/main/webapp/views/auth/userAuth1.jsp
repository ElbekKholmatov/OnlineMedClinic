<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shakh
  Date: 15-Feb-23
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>DentCare - Dental Clinic Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="/resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>
<div class="overlay">
    <!-- LOGN IN FORM by Omar Dsoky -->
    <form>
        <!--   con = Container  for items in the form-->
        <div class="con">
            <!--     Start  header Content  -->
            <header class="head-form">
                <h2>Log In</h2>
                <!--     A welcome message or an explanation of the login form -->
                <p>login here using your username and password</p>
            </header>
            <!--     End  header Content  -->
            <br>
            <div class="field-set">

                <!--   user name -->
                <span class="input-item">
           <i class="fa fa-user-circle"></i>
         </span>
                <!--   user name Input-->
                <input class="form-input" id="txt-input" type="text" placeholder="@UserName" required>

                <br>

                <!--   Password -->

                <span class="input-item">
        <i class="fa fa-key"></i>
       </span>
                <!--   Password Input-->
                <input class="form-input" type="password" placeholder="Password" id="pwd" name="password" required>

                <!--      Show/hide password  -->
                <span>
        <i class="fa fa-eye" aria-hidden="true" type="button" id="eye"></i>
     </span>


                <br>
                <!--        buttons -->
                <!--      button LogIn -->
                <button class="log-in"> Log In</button>
            </div>

            <!--   other buttons -->
            <div class="other">
                <!--      Forgot Password button-->
                <button class="btn submits frgt-pass">Forgot Password</button>
                <!--     Sign Up button -->
                <a style="margin-top:25px;" href="<c:url value="${pageContext.request.contextPath}/views/auth/signUp.jsp"/>" class="btn btn-info  py-2 px-4 ms-3">
                    Sign Up
                    <!--         Sign Up font icon -->
                    <i class="fa fa-user-plus" aria-hidden="true"></i>
                </a>
                <!--      End Other the Division -->
            </div>

            <!--   End Conrainer  -->
        </div>

        <!-- End Form -->
    </form>
</div>
<style>
    /* Fonts Form Google Font ::- https://fonts.google.com/  -:: */
    @import url('https://fonts.googleapis.com/css?family=Abel|Abril+Fatface|Alegreya|Arima+Madurai|Dancing+Script|Dosis|Merriweather|Oleo+Script|Overlock|PT+Serif|Pacifico|Playball|Playfair+Display|Share|Unica+One|Vibur');
    /* End Fonts */
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    /* End Global rules */

    /* Start body rules */
    body {
        background-image: linear-gradient(-225deg, #E3FDF5 0%, #6acdf6 80%);
        background-image: linear-gradient(to top, #a8edea 0%, #629ac4 80%);
        background-attachment: fixed;
        background-repeat: no-repeat;

        font-family: 'Vibur', cursive;
        /*   the main font */
        font-family: 'Abel', sans-serif;
        opacity: .95;
        /* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
    }


    /* |||||||||||||||||||||||||||||||||||||||||||||*/
    /* //////////////////////////////////////////// */


    /* End body rules */

    /* Start form  attributes */
    form {
        width: 450px;
        min-height: 500px;
        height: auto;
        border-radius: 5px;
        margin: 2% auto;
        box-shadow: 0 9px 50px hsla(20, 67%, 75%, 0.31);
        padding: 2%;
        background-image: linear-gradient(-225deg, #98e7ef 50%, #76adfc 80%);
    }

    /* form Container */
    form .con {
        display: -webkit-flex;
        display: flex;

        -webkit-justify-content: space-around;
        justify-content: space-around;

        -webkit-flex-wrap: wrap;
        flex-wrap: wrap;

        margin: 0 auto;
    }

    /* the header form form */
    header {
        margin: 2% auto 10% auto;
        text-align: center;
    }

    /* Login title form form */
    header h2 {
        font-size: 250%;
        font-family: 'Playfair Display', serif;
        color: #3e403f;
    }

    /*  A welcome message or an explanation of the login form */
    header p {
        letter-spacing: 0.05em;
    }


    /* //////////////////////////////////////////// */
    /* //////////////////////////////////////////// */


    .input-item {
        background: #fff;
        color: #333;
        padding: 14.5px 0px 15px 9px;
        border-radius: 5px 0px 0px 5px;
    }


    /* Show/hide password Font Icon */
    #eye {
        background: #fff;
        color: #333;

        margin: 5.9px 0 0 0;
        margin-left: -20px;
        padding: 15px 9px 19px 0px;
        border-radius: 0px 5px 5px 0px;

        float: right;
        position: relative;
        right: 1%;
        top: -.2%;
        z-index: 5;

        cursor: pointer;
    }

    /* inputs form  */
    input[class="form-input"] {
        width: 240px;
        height: 50px;

        margin-top: 2%;
        padding: 15px;

        font-size: 16px;
        font-family: 'Abel', sans-serif;
        color: #5E6472;

        outline: none;
        border: none;

        border-radius: 0px 5px 5px 0px;
        transition: 0.2s linear;

    }

    input[id="txt-input"] {
        width: 250px;
    }

    /* focus  */
    input:focus {
        transform: translateX(-2px);
        border-radius: 5px;
    }

    /* //////////////////////////////////////////// */
    /* //////////////////////////////////////////// */

    /* input[type="text"] {min-width: 250px;} */
    /* buttons  */
    button {
        display: inline-block;
        color: #252537;

        width: 280px;
        height: 50px;

        padding: 0 20px;
        background: #fff;
        border-radius: 5px;

        outline: none;
        border: none;

        cursor: pointer;
        text-align: center;
        transition: all 0.2s linear;

        margin: 7% auto;
        letter-spacing: 0.05em;
    }

    /* Submits */
    .submits {
        width: 48%;
        display: inline-block;
        float: left;
        margin-left: 2%;
    }

    /*       Forgot Password button FAF3DD  */
    .frgt-pass {
        background: transparent;
    }

    /*     Sign Up button  */
    .sign-up {
        background: #96dcee;
    }


    /* buttons hover */
    button:hover {
        transform: translatey(3px);
        box-shadow: none;
    }

    /* buttons hover Animation */
    button:hover {
        animation: ani9 0.4s ease-in-out infinite alternate;
    }

    @keyframes ani9 {
        0% {
            transform: translateY(3px);
        }
        100% {
            transform: translateY(5px);
        }
    }

</style>
<script>
    // Show/hide password onClick of button using Javascript only

    // https://stackoverflow.com/questions/31224651/show-hide-password-onclick-of-button-using-javascript-only

    function show() {
        var p = document.getElementById('pwd');
        p.setAttribute('type', 'text');
    }

    function hide() {
        var p = document.getElementById('pwd');
        p.setAttribute('type', 'password');
    }

    var pwShown = 0;

    document.getElementById("eye").addEventListener("click", function () {
        if (pwShown == 0) {
            pwShown = 1;
            show();
        } else {
            pwShown = 0;
            hide();
        }
    }, false);

    <jsp:include page="/fragments/js.jsp"/>

</script>
</body>
</html>
