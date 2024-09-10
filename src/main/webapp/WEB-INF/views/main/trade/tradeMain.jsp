<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 10.
  Time: 오후 3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--     <script defer src="../common/js/common.js"></script>--%>
    <script src="../common/js/jquery-3.7.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
    .body {
        width: 1100px;
        margin: 0 auto;
        border-radius: 10px;
    }

    .body .title {
        margin: 15px auto;
        height: 100px;
        font-size: 50px;
        color: black;
        border-radius: 10px;
    }

    .trade-container {
        border: 1px solid #e0e0e0;
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        margin: 0 auto;
        padding: 30px;
        border-radius: 10px;
    }

    .trade-List {
        display: flex;
        flex-wrap: wrap;
        align-content: center;
        margin: 10px;
    }

    .trade-card {
        border-radius: 8px;
        padding: 16px;
        width: 235px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 0 9px 16px;
    }

    .trade-card a {
        font-size: 18px;
        font-weight: bold;
        text-decoration: none;
        color: #333;
    }

    .trade-card span {
        display: block;
        margin-top: 8px;
        font-size: 14px;
        color: #555;
    }

    .m_list_tit {
        color: #333;
    }

    .m_list_tit li {
        padding: 0 20px;
    }

    .nav-tabs2 > li {
        float: left;
        margin-bottom: -1px;
        background: #fff;
        color: #999;
    }
</style>
<body>
<script>

    function tradeListPaging(elem) {
        console.log("페이징 함수 진입")
        console.log(elem.innerHTML)
        $.ajax({
            method: 'get',
            url: "/trade/list/paging",
            data: {"pageNum": elem.innerHTML, "pageSize": 8}
        }).done((resp) => {
            console.log("페이징 DONE")
            console.log(resp)
            let thisDiv = $('#tradeList')
            let str = "";
            for (const el of resp) {
                if (el.visible === "1") {
                    str += "<div class='trade-card' id='" + el.visible + "'>"
                    str += "<a href='/trade/detail?t_num='" + el.t_num + "'>" + el.t_title
                    str += "<span id='trade_m_id'>작성자 : " + el.m_id + "</span>"
                    str += "<span>날짜 : " + el.t_date + "</span>"
                    str += "<span>조회수 :" + el.t_views + "</span>"
                    str += "<span>추천수 : " + el.t_count + "</span></a></div>"
                }
            }
            if (str !== "") {
                thisDiv.html(str)
            } else {
                thisDiv.html('페이지가 존재하지 않습니다. 집에가세요')
            }
        }).fail((err) => {
            console.log("페이징 FAIL")
        })
    }
</script>
<header>
    <jsp:include page="../common/header.jsp"></jsp:include>
</header>
<ul class="breadcrumb">
    <li>HOME</li>
    <li>물물교환</li>
</ul>
<div class="body">
    <div class="title" style="text-align: center">
        <strong>물물교환</strong><br>
        <a href="/refrigerator"><strong style="color: #f9f9f9">냉장고</strong></a>

    </div>
    <div class="trade-container">
        <div class="m_list_tit" style="width: 1100px">
            <a class="write" href="/trade/write">글쓰기</a>
            <ul class="nav nav-tabs2 pull-right" style="float: right;">
                <li role="presentation"><a href="javascript:void(0)" onclick="total()" id="total">전체</a></li>
                <li role="presentation"><a href="javascript:void(0)" id="datesort">날짜순</a></li>
                <li role="presentation"><a href="javascript:void(0)" id="viewsort">조회순</a>
                </li>
                <li role="presentation" class="active"><a href="javascript:void(0)" id="countsort">추천순</a></li>
            </ul>
        </div>
        <div id="tradeList" class="trade-List">

            <c:forEach var="trades" items="${tList}">
                <c:if test="${trades.visible=='1'}">
                    <div class="trade-card" id="${trades.visible}">
                        <a href="/trade/detail?t_num=${trades.t_num}">${trades.t_title}
                            <span id="trade_m_id">작성자: ${trades.m_id}</span>
                            <span>날짜: ${trades.t_date}</span>
                            <span>조회수: ${trades.t_views}</span>
                            <span>추천수: ${trades.t_count}</span>
                        </a>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </div>
    <div style="margin-left: 370px; width: 1100px; text-align: center; margin-top: 25px">
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" onclick="tradeListPaging(this)"
                                         href="javascript:void(0)">1</a></li>
                <li class="page-item"><a class="page-link" onclick="tradeListPaging(this)"
                                         href="javascript:void(0)">2</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                         onclick="tradeListPaging(this)">3</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                         onclick="tradeListPaging(this)">4</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                         onclick="tradeListPaging(this)">5</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                         onclick="tradeListPaging(this)">6</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                         onclick="tradeListPaging(this)">7</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                         onclick="tradeListPaging(this)">8</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                         onclick="tradeListPaging(this)">9</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
<script>
    $(document).ready(function () {
        document.getElementById("datesort").addEventListener("click", function (event) {
            event.preventDefault();
            $.ajax({
                url: "/trade/dateSort",
                type: "get",
            }).done((resp) => {
                $("#tradeList").empty()
                $.each(resp, function (index, trade) {
                    let tradeCard = `
                    <div class="trade-card">
                            <a href="/trade/detail?t_num=\${trade.t_num}\">
                                \${trade.t_title}\
                                <span>작성자: \${trade.m_id}\</span>
                                <span>날짜: \${trade.t_date}\</span>
                                <span>조회수: \${trade.t_views}\</span>
                                <span>추천수: \${trade.t_count}\</span>
                            </a>
                        </div>
                    `
                    $("#tradeList").append(tradeCard)
                })

            }).fail((err) => {
                console.log(err)
            })
        })
        document.getElementById("viewsort").addEventListener("click", function () {
            $.ajax({
                url: "/trade/viewSort",
                type: "get"
            }).done((resp) => {
                console.log(resp)
                $("#tradeList").empty()
                $.each(resp, function (index, trade) {
                    let tradeCard = `
                    <div class="trade-card">
                            <a href="/trade/detail?t_num=\${trade.t_num}\">
                                \${trade.t_title}\
                                <span>작성자: \${trade.m_id}\</span>
                                <span>날짜: \${trade.t_date}\</span>
                                <span>조회수: \${trade.t_views}\</span>
                                <span>추천수: \${trade.t_count}\</span>
                            </a>
                        </div>
                    `
                    $("#tradeList").append(tradeCard)
                })
            }).fail((err) => {
                console.log(err)
            })
        })
        document.getElementById("countsort").addEventListener("click", function () {
            $.ajax({
                url: "/trade/countSort",
                type: "get"
            }).done((resp) => {
                console.log(resp)
                $("#tradeList").empty()
                $.each(resp, function (index, trade) {
                    let tradeCard = `
                    <div class="trade-card">
                            <a href="/trade/detail?t_num=\${trade.t_num}\">
                                \${trade.t_title}\
                                <span>작성자: \${trade.m_id}\</span>
                                <span>날짜: \${trade.t_date}\</span>
                                <span>조회수: \${trade.t_views}\</span>
                                <span>추천수: \${trade.t_count}\</span>
                            </a>
                        </div>
                    `
                    $("#tradeList").append(tradeCard)
                })
            }).fail((err) => {
                console.log(err)
            })
        })
    })

    function total() {
        window.location.reload()
    }
</script>
</body>
</html>
