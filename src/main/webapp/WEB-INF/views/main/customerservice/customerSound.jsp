<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 30.
  Time: 오후 6:16
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
    <h1 style="font-size: large; margin-top: 10px; margin-left: 400px">HOME > 고객센터 > 1:1문의</h1>
    <h1 style="font-size: xx-large; margin-top: 30px; margin-left: 400px; font-weight: bold">1:1문의</h1>
    <div style="display: flex; flex-direction: column">
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
            <div style="width: 950px; margin-left: 100px; margin-top: 25px">
                <table class="table table-group-divider table-borderless">
                    <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody class="">
                    <tr>
                        <th style="font-weight: bold">분류</th>
                        <td colspan="3">
                            <select style="width: 500px; height: 40px; border: lightgray 1px solid">
                                <option selected>&nbsp;&nbsp;&nbsp;선택</option>
                                <option>&nbsp;&nbsp;&nbsp;영양상담</option>
                                <option>&nbsp;&nbsp;&nbsp;배송</option>
                                <option>&nbsp;&nbsp;&nbsp;주문/결제</option>
                                <option>&nbsp;&nbsp;&nbsp;취소문의</option>
                                <option>&nbsp;&nbsp;&nbsp;교환</option>
                                <option>&nbsp;&nbsp;&nbsp;반품</option>
                                <option>&nbsp;&nbsp;&nbsp;환불</option>
                                <option>&nbsp;&nbsp;&nbsp;회원정보</option>
                                <option>&nbsp;&nbsp;&nbsp;상품정보</option>
                                <option>&nbsp;&nbsp;&nbsp;서비스문의</option>
                                <option>&nbsp;&nbsp;&nbsp;기타문의</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th style="font-weight: bold">이메일</th>
                        <th colspan="4"><input style="height: 40px; width: 150px; border: lightgray 1px solid"
                                               type="text">&nbsp;&nbsp;@&nbsp;&nbsp;<input
                                style="height: 40px; width: 150px; border: lightgray 1px solid" type="text">
                            <select style="height: 40px; width: 150px; border: lightgray 1px solid">
                                <option selected>직접입력</option>
                                <option>naver.com</option>
                                <option>gmail.com</option>
                                <option>hotmail.com</option>
                                <option>hanmail.net</option>
                                <option>daum.net</option>
                                <option>nate.com</option>
                            </select></th>
                    </tr>
                    <tr>
                        <th style="font-weight: bold">휴대폰번호</th>
                        <th colspan="4">
                            <select style="height: 40px; width: 150px; border: lightgray 1px solid">
                                <option selected>&nbsp;&nbsp;010</option>
                                <option>011</option>
                                <option>012</option>
                                <option>013</option>
                                <option>014</option>
                                <option>070</option>
                            </select>&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" style="height: 40px; width: 146px; border: lightgray 1px solid">&nbsp;&nbsp;-&nbsp;&nbsp;<input
                                type="text"
                                style="height: 40px; width: 146px; border: lightgray 1px solid">
                        </th>
                    </tr>
                    <tr>
                        <th style="font-weight: bold">제목</th>
                        <th colspan="4"><input type="text" style="height: 40px; width: 750px; border: lightgray 1px solid"></th>
                    </tr>
                    <tr>
                        <th style="font-weight: bold">내용</th>
                        <th colspan="4" rowspan="8"><input type="text" style="width: 750px; height: 300px; border: lightgray 1px solid"></th>
                    </tr>
                    <tr>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                    </tr>
                    <tr>
                        <th style="font-weight: bold">첨부파일</th>
                        <th>
                            <button style="width: 80px; height: 80px; border: lightgray 1px solid">+</button>
                        </th>
                        <th>
                            <button style="width: 80px; height: 80px; border: lightgray 1px solid">+</button>
                        </th>
                        <th>
                            <button style="width: 80px; height: 80px; border: lightgray 1px solid">+</button>
                        </th>
                        <th>
                            <button style="width: 80px; height: 80px; border: lightgray 1px solid">+</button>
                        </th>
                        <th>
                            <button style="width: 80px; height: 80px; border: lightgray 1px solid">+</button>
                        </th>
                    </tr>
                    <tr>
                        <th></th>
                        <th colspan="3">※파일형식은 이미지파일(jpg, png)로 제출 가능합니다.</th>
                    </tr>
                    <tr>
                        <th></th>
                        <th colspan="3">※파일용량은 최대 10MB 까지 가능합니다.</th>
                    </tr>
                    </tbody>
                </table>
                <hr>
            </div>
        </div>
        <div style="display: flex; flex-direction: row-reverse">
            <div style="width: 90%; text-align: center">
                <br>
                <br>
                <button onclick="location.href='/customer/center'" style="height: 70px; width: 200px; border: lightgray 1px solid; font-weight: bold; font-size: larger">취소</button>
                <button style="height: 70px; width: 200px; background-color: #77b347; font-weight: bold; font-size: larger; color: white">등록</button>
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
            </div>
        </div>
    </div>
</main>
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
</body>
</html>
