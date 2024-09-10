<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 8. 14.
  Time: 오후 1:32
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
<script>
</script>
<main>
    <h1 style="font-size: large; margin-top: 10px; margin-left: 400px">HOME > 고객센터 > 공지사항</h1>
    <h1 style="font-size: xx-large; margin-top: 30px; margin-left: 400px; font-weight: bold">공지사항</h1>
    <div style="display: flex; flex-direction: row">
        <div style="width: 180px; height: 230px; background-color: #F5F5F5; margin-left: 400px; margin-top: 20px; justify-content: center; border-radius: 20px">
            <br>
            <a class="customerCenter-menu Active" href="/customer/center" style="font-size: large; margin-left: 20px"> 공지사항</a><br><br>
            <a class="customerCenter-menu" href="/customer/problem" style="font-size: large; margin-left: 20px"> 자주 묻는 질문</a><br><br>
            <a class="customerCenter-menu" href="/customer/question" style="font-size: large; margin-left: 20px"> 1:1 문의</a><br><br>
            <a class="customerCenter-menu" href="/customer/sound" style="font-size: large; margin-left: 20px"> 고객의 소리</a><br><br>
            <p style="margin-top: 20px; color: #77b347; font-size: xx-large">상담사</p>
            <p style="color: #77b347; font-size: xx-large">황 인 욱</p>
            <p style="color: #77b347; font-size: x-large">010-2857-8839</p>
            <p>평일, 주말, 공휴일 및 시간에 관계없이 편하실 때 전화주세요</p>
        </div>
        <div style="width: 750px; margin-left: 100px; margin-top: 25px">
            <form action="/customer/center/noticeWrite/done" method="post">
            <table>
                <tr>
                    <td colspan="2" style="color: black; font-weight: bold">제목</td>
                    <td colspan="6"><input type="text" name="noticeTitle" style="width: 500px; height: 60px; border: 1px solid lightgray"></td>
                </tr>
                <tr>
                    <td colspan="2" style="color: black; font-weight: bold">내용</td>
                    <td colspan="6"><input type="text" name="noticeContents" style="width: 500px; height: 400px; border: 1px solid lightgray"></td>
                </tr>
            </table>
                <input name="currentID" type="hidden" value="${id}">
            <div style="text-align: center; margin-top: 50px; display: flex; flex-direction: row">
                <a href="/customer/center" class="btn btn-warning" style="height: 50px; width: 200px; justify-content: center; font-size: x-large; font-weight: bold; color: white">취소</a>
                <button type="submit" class="btn btn-success" style="height: 50px; width: 200px; justify-content: center; font-size: x-large; font-weight: bold; color: white">등록</button>
            </div>
            </form>
        </div>
    </div>
    <div style="margin-left: 900px; margin-top: 50px">
    </div>
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
</main>

<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
</body>
</html>
