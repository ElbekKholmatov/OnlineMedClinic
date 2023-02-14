<%--
  Created by IntelliJ IDEA.
  User: capitan
  Date: 14/02/23
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Server Error</title>
    <link rel="stylesheet" href="/resources/css/500.css">
</head>
<body>
<main>
    <div id="wrap">
        <div class="hand hand-left">
            <span class='hand-part part-top'></span>
            <span class='hand-part part-middle'></span>
            <span class='hand-part part-bottom'></span>
        </div>
        <div class="hand hand-right">
            <span class='hand-part part-top'></span>
            <span class='hand-part part-middle'></span>
            <span class='hand-part part-bottom'></span>
        </div>
        <div class='line line-1'>
            <div class="ball">5</div>
        </div>
        <div class='line line-2'>
            <div class="ball">0</div>
        </div>
        <div class='line line-3'>
            <div class="ball">0</div>
        </div>
        <div id="server">
            <div class="eye eye-left"><span></span></div>
            <div class="eye eye-right"><span></span></div>
            <div class="block">
                <div class="light"></div>
            </div>
            <div class="block">
                <div class="light"></div>
            </div>
            <div class="block">
                <div class="light"></div>
            </div>
            <div class="block">
                <div class="light"></div>
            </div>
            <div class="block">
                <div class="light"></div>
            </div>
            <div id="bottom-block">
                <div class="bottom-line"></div>
                <div id="bottom-light"></div>
            </div>
        </div>
    </div>

    <div id="code-error">
        <h1>Internal Server Error!</h1>
    </div>

</main>
</body>
</html>
