<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 31.
  Time: 오후 4:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <header>
        <jsp:include page="../common/header.jsp"></jsp:include>
    </header>
    <main>
        <h1 style="font-size: large; margin-top: 10px; margin-left: 400px">HOME > 건강식단 > 나만의 식단</h1>
        <div style="display: flex;flex-direction: row; margin-top: 30px">
            <div style="width: 35%"></div>
            <div style="width: 35%">
                <img src="/uploadedImg/main/care/나만의식단.jpg">
            </div>
            <div style="width: 30%"></div>
        </div>
        <div style="display: flex; flex-direction: row;">
            <div style="width: 27%"></div>
            <div style="width: 60%;">
                <button onclick="location.href='#'" style="width: 500px; height: 100px; border: 1px solid #77b347; color: #77b347; font-size: xx-large">메뉴 미리보기</button>
                <button onclick="location.href='#'" style="width: 300px; height: 100px; background-color: #77b347; color: white; font-size: xx-large">주문하기</button>
                <button onclick="location.href='#'" style="width: 200px; height: 100px; background-color: #E5B83F; color: white; font-size: xx-large">선물하기</button>
            </div>
            <div style="width: 13%"></div>
        </div>
    </main>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <footer>
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </footer>
</body>
</html>
