<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 5.
  Time: 오후 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css?h=cb606d99bb2418df19b6bc818b41e412">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="/assets/css/styles.min.css?h=94c76ca45cf1136042bce4cad72a7b5e">
</head>
<body>
<header>
    <jsp:include page="../common/header.jsp"></jsp:include>
</header>
<h1 style="font-size: xxx-large; text-align: center;margin-top: 70px">회원가입</h1>
<div style="margin-left: 400px; width: 1100px;">
<div style="margin-top: 100px;display: flex; flex-direction: row; text-align: center">
    <a href="agreefrm" style="margin-right: 50px; margin-left: 270px">
        <button style="width: 250px; height: 100px; text-align: center; font-size: xxx-large; font-weight: bold" type="submit" class="btn btn-outline-primary">일반회원</button>
    </a>
    <a href="/">
        <button style="width: 250px; height: 100px; text-align: center; font-size: xxx-large; font-weight: bold" type="submit" class="btn btn-outline-success">홈페이지로</button>
    </a>
</div>
</div>
<hr>
<div style="display: flex; flex-direction: row; width: 45%; margin: 0 auto 0">
<button class="btn btn-cancel"><img style="width: 100px; height: 100px" src="/uploadedImg/main/MainPage/카카오톡.png"></button>
<button class="btn btn-cancel"><img style="width: 60px; height: 60px" src="/uploadedImg/main/MainPage/네이년.png"></button>
<button class="btn btn-cancel"><img style="width: 80px; height: 80px" src="/uploadedImg/main/MainPage/구글.png"></button>
</div>
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
</body>
</html>
