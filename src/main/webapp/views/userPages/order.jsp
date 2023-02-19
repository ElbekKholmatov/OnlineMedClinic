<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html>
<head>
    <title>Add Book</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>

<h1 class="text-center" style="margin-top: 30px; margin-bottom: 30px">Ro'yxatga yozilib qo'yish!</h1>

<form class="row g-3" method="post" enctype="multipart/form-data">
    <div class="col-md-5 offset-1">
        <label for="validationServer01" class="form-label">Ismingiz</label>
        <input type="text" class="form-control is-valid" id="validationServer01" name="firstname"
               placeholder="Ismingizni kiriting">
        <div class="valid-feedback">
            ✔
        </div>
        <div class="invalid-feedback">
            ❌
        </div>
    </div>
    <div class="col-md-4 offset-1">
        <label for="validationServer02" class="form-label">Familiyangiz</label>
        <input type="text" class="form-control is-valid" id="validationServer02" name="lastname"
               placeholder="Familiyangizni kiriting">
        <div class="valid-feedback">
            ✔
        </div>
        <div class="invalid-feedback">
            ❌
        </div>
    </div>

    <div class="col-md-5 offset-1">
        <label for="validationServer03" class="form-label">Telefon raqamingiz</label>
        <input type="text" class="form-control" id="validationServer03" name="phoneNumber"
               placeholder="+998991234567" aria-describedby="validationServer03Feedback">
        <div id="validationServer03Feedback" class="invalid-feedback">
            Please provide a publisher's name.
        </div>
    </div>

    <div class="col-sm-2 offset-1">
        <label for="date" class="form-label">Qaysi kunga yozilmoqchisiz</label>
        <div class="input-group date" id="datepicker">
            <input type="date" class="form-control" id="date" name="dateOfC=Visiting" placeholder="02/09/2023"/>
<%--            <i class="fa fa-calendar"></i>--%>
        </div>
    </div>

    <div class="col-md-10 offset-1" style="margin-bottom: 10px">
        <label for="validationTextarea1" class="form-label">Shifokor ismini</label>
        <input type="text" class="form-control " rows="3" id="validationTextarea1" name="description"
               placeholder="Shifokorning ismini kiring"></input>
        <div class="invalid-feedback">
            field
        </div>
    </div>

    <%--    <div class="">--%>
    <%--        <select class="form-select" aria-label="select example" style="margin-top: 30px" id="category_id"--%>
    <%--                name="category_id">--%>
    <%--            <option value="0">Choose a category</option>--%>
    <%--            <c:forEach items="${categories}" var="category">--%>
    <%--                <option value="${category.getId()}">${category.getName()}</option>--%>
    <%--            </c:forEach>--%>
    <%--        </select>--%>
    <%--        <div class="invalid-feedback">Example invalid select feedback</div>--%>
    <%--    </div>--%>

    <div class="col-md-10 offset-1" style="margin-bottom: 10px">
        <label for="validationTextarea1" class="form-label">Shifokorga xabaringiz</label>
        <textarea class="form-control " rows="3" id="validationTextarea1" name="description"
                  placeholder="Xabaringizni shu yerga yozing"></textarea>
        <div class="invalid-feedback">
            field
        </div>
    </div>

    <%--    <div class="col-sm-2 offset-1">--%>
    <%--        <label for="date" class="form-label">Date of publication</label>--%>
    <%--        <div class="input-group date" id="datepicker">--%>
    <%--            <input type="date" class="form-control" id="date" name="publishedAt" placeholder="02/09/2023"/>--%>
    <%--            <i class="fa fa-calendar"></i>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <%--    <div class="col-md-3 offset-1">--%>
    <%--        <label for="image" class="form-label">Upload the Image File</label>--%>
    <%--        <input type="file" class="form-control" id="image" name="image" aria-label="file example">--%>
    <%--        <div class="invalid-feedback">Example invalid form file feedback</div>--%>
    <%--    </div>--%>

    <%--    <div class="col-md-3 offset-1">--%>
    <%--        <label for="file" class="form-label">Upload the PDF File</label>--%>
    <%--        <input type="file" class="form-control" id="file" name="file" aria-label="file example">--%>
    <%--        <div class="invalid-feedback">Example invalid form file feedback</div>--%>
    <%--    </div>--%>

    <div class="col-12 offset-1">
        <div class="form-check">
            <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3"
                   aria-describedby="invalidCheck3Feedback">
            <label class="form-check-label" for="invalidCheck3">
                <a href="">Agree to terms and conditions</a>
            </label>
            <div id="invalidCheck3Feedback" class="invalid-feedback">
                You must agree before submitting.
            </div>
        </div>
    </div>
    <div class="col-12 offset-1">
        <button class="btn btn-primary" type="submit">Submit form</button>
    </div>
</form>
<jsp:include page="/fragments/css.jsp"/>
<style>
    * {
        background-image: linear-gradient(-225deg, #E3FDF5 0%, #badfec 80%);
        background-image: linear-gradient(to top, #a8edea 0%, #80b5da 80%);
        background-attachment: fixed;
        background-repeat: no-repeat;
    }
</style>
</body>
</html>