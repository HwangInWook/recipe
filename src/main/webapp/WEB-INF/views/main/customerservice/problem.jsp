<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 30.
  Time: 오후 6:15
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
    <h1 style="font-size: large; margin-top: 10px; margin-left: 400px">HOME > 고객센터 > 자주 묻는 질문</h1>
    <h1 style="font-size: xx-large; margin-top: 30px; margin-left: 400px; font-weight: bold">자주 묻는 질문</h1>
    <div style="display: flex; flex-direction: column">
        <div style="flex-direction: row; display: flex;">
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
                <table class="borderless">
                    <tr>
                        <th colspan="4"><input style="height: 80px; width: 910px; border-radius: 20px; border: #77b347 solid 3px" type="text" placeholder="   궁금한 점을 검색해 보세요"></th>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                    </tr>
                    <tr>
                        <th><button style="border: 3px solid gray; height: 60px; width: 200px; border-radius: 30px">전체</button></th>
                        <th><button style="border: 3px solid gray; height: 60px; width: 200px; border-radius: 30px">상품</button></th>
                        <th><button style="border: 3px solid gray; height: 60px; width: 200px; border-radius: 30px">생산</button></th>
                        <th><button style="border: 3px solid gray; height: 60px; width: 200px; border-radius: 30px">회원정보</button></th>
                    </tr>
                    <tr>
                        <th><button style="border: 3px solid gray; height: 60px; width: 200px; border-radius: 30px">주문/결제</button></th>
                        <th><button style="border: 3px solid gray; height: 60px; width: 200px; border-radius: 30px">배송</button></th>
                        <th><button style="border: 3px solid gray; height: 60px; width: 200px; border-radius: 30px">취소/교환/반품</button></th>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                    </tr>
                </table>
                <table class="table table-group-divider table-borderless">
                    <tr>
                        <th>&nbsp;</th>
                    </tr>
                    <tr>
                        <th colspan="6">전체</th>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                    </tr>
                    <tr class="table-group-divider" style="color: lightgray">
                        <th><img style="height: 30px; width: 60px; color: black" src="/uploadedImg/main/MainPage/QNA.png"></th>
                        <th style="color: black">[질문]</th>
                        <th colspan="5" style="color: black">기가막히조는 무슨 뜻인가요?</th>
                    </tr>
                    <tr class="table-group-divider" style="color: lightgray">
                        <th><img style="height: 30px; width: 60px; color: black" src="/uploadedImg/main/MainPage/QNA.png"></th>
                        <th style="color: black">[질문]</th>
                        <th colspan="5" style="color: black">이런 사이트를 만들게 된 동기가 있을까요?</th>
                    </tr>
                    <tr class="table-group-divider" style="color: lightgray">
                        <th><img style="height: 30px; width: 60px; color: black" src="/uploadedImg/main/MainPage/QNA.png"></th>
                        <th style="color: black">[명령]</th>
                        <th colspan="5" style="color: black">그만 자고 [황인욱]</th>
                    </tr>
                    <tr class="table-group-divider" style="color: lightgray">
                        <th><img style="height: 30px; width: 60px; color: black" src="/uploadedImg/main/MainPage/QNA.png"></th>
                        <th style="color: black">[명령]</th>
                        <th colspan="5" style="color: black">다키스트 던전 그만하고 [원준식]</th>
                    </tr>
                    <tr class="table-group-divider" style="color: lightgray">
                        <th><img style="height: 30px; width: 60px; color: black" src="/uploadedImg/main/MainPage/QNA.png"></th>
                        <th style="color: black">[흠]</th>
                        <th colspan="5" style="color: black">대충 페이지 채우기용 ㅇㅇ</th>
                    </tr>
                </table>
            </div>
        </div>
        <div style="margin-left: 900px; margin-top: 50px">
            <ul class="pagination">
                <li class="page-item disabled"><a class="page-link" aria-label="Previous"
                                                  href="#"><span aria-hidden="true">«</span></a>
                </li>
                <li class="page-item active"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">1</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">2</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">3</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">4</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">5</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">6</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">7</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">8</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">9</a></li>
                <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">10</a></li>
                <li class="page-item"><a class="page-link" aria-label="Next" href="#">
                    <span aria-hidden="true">»</span></a></li>&nbsp;&nbsp;&nbsp;&nbsp;
                <sec:authorize access="hasRole('ADMIN')">
                    <button>글쓰기</button>
                </sec:authorize>
            </ul>

        </div>
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
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
</body>
</html>
