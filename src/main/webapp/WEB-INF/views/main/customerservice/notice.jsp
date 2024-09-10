<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 30.
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
           prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        * {
            font-family: 'Noto Sans KR';
            font-weight: 500;
        }
        .customerCenter-menu Active {
            color: black;
        }
    </style>
</head>
<body>
<header>
    <jsp:include page="../common/header.jsp"></jsp:include>
</header>
<script>
    function pageFSearch(elem, event) {
        if (event.keyCode === 13) {
            window.find(elem)
        }
    }
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
            <hr>
            <table class="table">
                <thead>
                <tr>
                    <th colspan="2" scope="col">전체 ${nList.size()}</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col" colspan="4"> <input type="search" id="pageInSearchForm" class="form-control form-control-sm"
                                            aria-controls="dataTable" placeholder="페이지 내 검색"
                                            onkeypress="pageFSearch(this.value, event)" autocomplete="off"></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th style="text-align: center">#</th>
                    <th style="text-align: center">분류</th>
                    <th colspan="5" style="text-align: center">제목</th>
                    <th style="text-align: center">작성자</th>
                </tr>
                <c:forEach var="item" items="${nList}" varStatus="i">
                    <tr>
                        <th style="text-align: center">${i.count}</th>
                        <th style="text-align: center">공지</th>
                        <th colspan="5" style="text-align: center">${item.title}</th>
                        <th style="text-align: center;">${item.m_id}</th>
                    </tr>
                </c:forEach>
                </tbody>
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
                <a href="/customer/center/noticeWrite">글쓰기</a>
            </sec:authorize>
        </ul>

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
