<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
           prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>E R P</title>
    <link rel="icon" href="/uploadedImg/main/Management/캡처.PNG" type="image/png">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css?h=cb606d99bb2418df19b6bc818b41e412">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="/assets/css/styles.min.css?h=94c76ca45cf1136042bce4cad72a7b5e">
    <style>
        .no-hover:hover {
            background-color: transparent !important;
            color: white !important;
        }
        tr:hover {
            background-color: #badce3;
        }
    </style>
</head>
<script>
    function searchDetailModal(value) {
        console.log("[검색] 상세 모달 오픈")
        const tds = value.getElementsByTagName('td');
        let trClassName = value.className
        let openBtn = $('#sModalOpen')
        console.log(trClassName)

        const values = [];

        for (let td of tds) {
            let anchor = td;
            if (anchor) {
                let text = anchor.textContent.trim();
                values.push(text);
            }
        }

        let param = [];
        switch (trClassName) {
            case "inven":
                if (values[5].length > 4) {
                    values[5] = values[5].substring(0, 4) + "%";
                }
                param.push(values[3])
                param.push(values[4])
                param.push(values[5])
                break;
            case "invenAdd":
                if (values[2].length > 4) {
                    values[2] = values[2].substring(0, 4) + "%";
                }
                param.push(values[1])
                param.push(values[2])
                break;

        }
        console.log(param)
        $.ajax({
            method: 'get',
            url: "/search/detailmodal",
            data: {"param": param, "className": trClassName}
        }).done((resp) => {
            console.log("[검색] 상세모달 DONE")
            let str = "";
            let data = $('#searchDetailModalInfo')
            console.log(resp)
            switch (trClassName) {
                case "invenAdd":
                    str += `<pre> 거래처 : \${resp[0].iv_company}\</pre>`;
                    str += `<pre> 상품명 : \${resp[0].iv_name}\</pre>`;
                    str += `<pre> 가격 : \${resp[0].iv_price}\ &#8361</pre>`;
                    str += `<pre> 부가세 : \${resp[0].iv_vat}\ &#8361</pre>`;
                    str += `<pre> 수량 : \${resp[0].iv_count}\</pre>`;
                    str += `<pre> 합계 : \${resp[0].iv_total}\ &#8361</pre>`;
                    str += `<pre> 현황 : \${resp[0].iv_current}\</pre>`;
                    break;
                case "inven":
                    str += `<pre> 등록일 : \${resp[0].f_date}\ ~ \${resp[0].f_date2}\</pre>`;
                    str += `<pre> 유통기한 : \${resp[0].f_edate}\ ~ \${resp[0].f_edate2}\</pre>`;
                    str += `<pre> 카테고리 : \${resp[0].c_name}\</pre>`;
                    str += `<pre> 상품코드 : \${resp[0].f_code}\</pre>`;
                    str += `<pre> 상품이름 : \${resp[0].f_title}\</pre>`;
                    str += `<pre> 수량 : \${resp[0].f_count}\</pre>`;
                    str += `<pre> 평균금액 : \${resp[0].f_price}\ &#8361</pre>`;
                    str += `<pre> 총 계 : \${resp[0].total}\ &#8361</pre>`;
                    break;
                default:
                    console.log("[검색] 상세모달 에러")
            }

            data.html(str)
            openBtn.click()
        }).fail((err) => {
            console.log("[검색] 상세모달 FAIL")
            console.log(err)
        })

    }

</script>
<body id="page-top" style="">
<div class="modal" id="searchDetailModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">상세</h5>
                <button type="button" class="btn-close" id="orderModalClose" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body" id="searchDetailModalInfo">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">페이지로 이동</button>
            </div>
        </div>
    </div>
</div>
<button id="sModalOpen" style="width: 200px; display: none" class='btn btn-primary' data-bs-toggle='modal'
        data-bs-target='#searchDetailModal'></button>
<div id="wrapper" style="">
    <%--    사이드바 E R P--%>
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
        <div class="container-fluid d-flex flex-column p-0"><br><br><br>
            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="/main">
                <div class="sidebar-brand-text mx-3">
                    <span><h1>E R P</h1></span>
                </div>
            </a><br><br>
            <hr class="sidebar-divider my-0"/>
            <ul class="navbar-nav text-light" id="accordionSidebar">
                <%--                사이드바 메뉴 구성--%>
                <li class="nav-item"><a class="nav-link active" href="/main"><i class="fas fa-tachometer-alt"></i>
                    <span> 매출 관리</span></a></li>
                <li class="nav-item"><a class="nav-link" href="/delivery"><i class="fas fa-user"></i>
                    <span> 배송 관리</span></a></li>
                <li class="nav-item"><a class="nav-link" href="/homepageR"><i class="fas fa-table"></i>
                    <span> 홈페이지 관리</span></a></li>
                <li class="nav-item"><a class="nav-link" href="/inventory"><i class="far fa-user-circle"></i>
                    <span> 재고 관리</span></a></li>
                <li class="nav-item"><a class="nav-link" href="/service"><i class="fas fa-user-circle"></i>
                    <span> 고객 센터</span></a></li>
                <li class="nav-item"><a class="nav-link" href="/">
                    <span> 홈페이지로 </span></a></li>
            </ul>
            <div class="text-center d-none d-md-inline">
                <button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button>
            </div>
        </div>
    </nav>
    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                <div class="container-fluid">
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle me-3" type="button"><i
                            class="fas fa-bars"></i></button>
                    <%--                    검색란 --%>
                    <div class="input-group" style="width: 500px;">
                        <input id="commonSearch" class="bg-light form-control border-0 small" type="text"
                               placeholder="검색어를 입력하세요"
                               onkeypress="commonSearch(this.value, event)"/>
                        <button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button>
                    </div>
                    <ul class="navbar-nav flex-nowrap ms-auto">
                        <%--                        우측 상단 헤더 알림--%>
                        <li id="noticelist" class="nav-item dropdown no-arrow mx-1">
                            <div class="nav-item dropdown no-arrow">
                                <a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown"
                                   href="#">
                                    <span id="span-notice-count" class="badge bg-danger badge-counter"></span>
                                    <i class="fas fa-bell fa-fw"></i></a>
                                <div class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                                    <h6 class="dropdown-header">알림</h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="me-3">
                                            <div class="bg-primary icon-circle">
                                                <i class="fas fa-file-alt text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <span class="small text-gray-500">24/07/02</span>
                                            <p>보고서 출력 준비가 완료되었습니다</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="me-3">
                                            <div class="bg-success icon-circle"><i class="fas fa-donate text-white"></i>
                                            </div>
                                        </div>
                                        <div><span class="small text-gray-500">24/07/01</span>
                                            <p>580,000￦의 환불비용이 법인계좌로 집행되었습니다</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">
                                        모든 알림 보기</a>
                                </div>
                            </div>
                        </li>
                        <%--                        우측 상단 메세지 리스트--%>
                        <li id="messagelist" class="nav-item dropdown no-arrow mx-1">
                            <div class="nav-item dropdown no-arrow">
                                <a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown"
                                   href="#">
                                    <span id="span-message-count" class="badge bg-danger badge-counter"></span>
                                    <i class="fas fa-envelope fa-fw"></i></a>
                                <div class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                                    <h6 class="dropdown-header">메세지</h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image me-3">
                                            <img class="rounded-circle" src="/assets/img/avatars/avatar4.jpeg"/>
                                            <div class="bg-success status-indicator"></div>
                                        </div>
                                        <div class="fw-bold">
                                            <div class="text-truncate"><span>Hi there! I am wondering if you can help me with a problem I&#39;ve been having.</span>
                                            </div>
                                            <p class="small text-gray-500 mb-0">Emily Fowler - 58m</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image me-3"><img class="rounded-circle"
                                                                                   src="/assets/img/avatars/avatar2.jpeg"/>
                                            <div class="status-indicator"></div>
                                        </div>
                                        <div class="fw-bold">
                                            <div class="text-truncate">
                                                <span>I have the photos that you ordered last month!</span></div>
                                            <p class="small text-gray-500 mb-0">Jae Chun - 1d</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image me-3"><img class="rounded-circle"
                                                                                   src="/assets/img/avatars/avatar3.jpeg"/>
                                            <div class="bg-warning status-indicator"></div>
                                        </div>
                                        <div class="fw-bold">
                                            <div class="text-truncate"><span>Last month&#39;s report looks great, I am very happy with the progress so far, keep up the good work!</span>
                                            </div>
                                            <p class="small text-gray-500 mb-0">Morgan Alvarez - 2d</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image me-3"><img class="rounded-circle"
                                                                                   src="/assets/img/avatars/avatar5.jpeg"/>
                                            <div class="bg-success status-indicator"></div>
                                        </div>
                                        <div class="fw-bold">
                                            <div class="text-truncate"><span>Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren&#39;t good...</span>
                                            </div>
                                            <p class="small text-gray-500 mb-0">Chicken the Dog · 2w</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">
                                        모든 메세지 보기</a>
                                </div>
                            </div>
                            <div class="shadow dropdown-list dropdown-menu dropdown-menu-end"
                                 aria-labelledby="alertsDropdown"></div>
                        </li>
                        <%--                        우측 상단 프로필--%>
                        <div class="d-none d-sm-block topbar-divider"></div>
                        <li class="nav-item dropdown no-arrow">
                            <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link"
                                                                       aria-expanded="false" data-bs-toggle="dropdown"
                                                                       href="#">
                                <span class="d-none d-lg-inline me-2 text-gray-600 small">Admin</span>
                                <img class="border rounded-circle img-profile" src="/assets/img/avatars/avatar2.jpeg"/></a>
                                <div class="dropdown-menu shadow dropdown-menu-end animated--grow-in">
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i> 내 정보</a>
                                    <a class="dropdown-item" href="chrome://settings"><i
                                            class="fas fa-cogs fa-sm fa-fw me-2 text-gray-400"></i> 설정</a>
                                    <a class="dropdown-item" href="chrome://history"><i
                                            class="fas fa-list fa-sm fa-fw me-2 text-gray-400"></i> 사용기록</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="/member/logout">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i> 로그아웃</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            <%--            네비게이션 바 END--%>
            <div style="background-color: white">
                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark mb-0"></h3>
                        <a class="btn btn-primary btn-sm d-none d-sm-inline-block"
                           role="button" href="javascript:window.print()"><i
                                class="fas fa-download fa-sm text-white-50"></i> 보고서 출력</a>
                    </div>
                </div>
                <main id="searchMain" style="justify-content: center; background-color: white;">
                    <h1 style="color: #4e73df">- - - ● 검색결과</h1><br><br><br>
<%--                    <div style="width: 80%; margin-left: 10%">--%>
<%--                        <c:choose>--%>
<%--                            <c:when test="${not empty searchList}">--%>
<%--                                <c:set var="isEmptyList" value="true"/>--%>
<%--                                <c:forEach var="item" items="${searchList}">--%>
<%--                                    <c:if test="${not empty item}">--%>
<%--                                        <c:set var="isEmptyList" value="false"/>--%>
<%--                                    </c:if>--%>
<%--                                </c:forEach>--%>
<%--                                <c:if test="${not isEmptyList}">--%>
<%--                                    <h3 style="color: #4e73df; text-align: center">리스트 확인용</h3>--%>
<%--                                    <c:forEach var="item" items="${searchList}">--%>
<%--                                        <c:forEach var="subItem" items="${item}">--%>
<%--                                            ${subItem}--%>
<%--                                            <hr style="height: 3px; border: 0; background-color: blue">--%>
<%--                                        </c:forEach>--%>
<%--                                    </c:forEach>--%>
<%--                                </c:if>--%>
<%--                            </c:when>--%>
<%--                            <c:otherwise>--%>
<%--                                <h2 style="color: #4e73df">검색 결과가 존재하지 않습니다.</h2>--%>
<%--                            </c:otherwise>--%>
<%--                        </c:choose>--%>
<%--                    </div>--%>
                    <div>
                        <c:forEach var="innerList" items="${searchList}" varStatus="status">
                        <c:if test="${not empty innerList}">
                        <c:choose>
                        <c:when test="${status.index == 0 and not empty searchList[0]}">
                        <div style="width: 80%; text-align: center; margin-left: 10%">
                            <h3 style="color: #4e73df">재고</h3><br>
                            <table class='table my-0' id='dataList'>
                                <tr id='mInven'
                                    style='vertical-align: center;background-color: #4e73df; color: white'>
                                    <th class='no-hover'>#</th>
                                    <th class='no-hover'>
                                        <h4 style='text-align: center'>등록일</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4 style='text-align: center;'>유통기한</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>카테고리</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>상품코드</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>상품이름</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>수량</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>평균금액</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>총 계</h4>
                                    </th>
                                </tr>
                                <c:forEach var="elem" items="${searchList[0]}" varStatus="i">
                                    <tr class='inven' onclick="searchDetailModal(this);">
                                        <td>${i.count}</td>
                                        <td>${elem.f_date} ~ ${elem.f_date2}</td>
                                        <td>${elem.f_edate} ~ ${elem.f_edate2}</td>
                                        <td>${elem.c_name}</td>
                                        <td>${elem.f_code}</td>
                                        <td>${elem.f_title}</td>
                                        <td>${elem.f_count}</td>
                                        <td>${elem.f_price}&#8361</td>
                                        <td>${elem.total}&#8361</td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <br><br>
                        </div>
                        </c:when>
                        <c:when test="${status.index == 1 and not empty searchList[1]}">
                        <div style="width: 80%; text-align: center; margin-left: 10%">
                            <h3 style="color: #4e73df">발주</h3><br>
                            <table class='table my-0'>
                                <tr style='vertical-align: center; background-color: #4e73df; color: white'>
                                    <td class='no-hover'>#</td>
                                    <th class='no-hover'>
                                        <h4>거래처</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>상품명</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>가격</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>부가세</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>수량</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>단가</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>합계</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>현황</h4>
                                    </th>
                                </tr>
                                <c:forEach var="elem" items="${searchList[1]}" varStatus="i">
                                    <tr class="invenAdd" onclick="searchDetailModal(this)">
                                        <td>${i.count}</td>
                                        <td>${elem.iv_company}</td>
                                        <td>${elem.iv_name}</td>
                                        <td>${elem.iv_price}&#8361</td>
                                        <td>${elem.iv_vat}&#8361</td>
                                        <td>${elem.iv_count}</td>
                                        <td>${elem.iv_priceSum}&#8361</td>
                                        <td>${elem.iv_total}&#8361</td>
                                        <td>${elem.iv_current}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <br><br>
                        </div>
                            </c:when>
                            <c:when test="${status.index == 2 and not empty searchList[2]}">
                            <div style="width: 80%; text-align: center; margin-left: 10%">
                                <h3 style="color: #4e73df">식자재</h3>
                                <table class='table my-0'>
                                    <tr style='vertical-align: center; background-color: #4e73df; color: white'>
                                        <th class="no-hover">#</th>
                                        <th class="no-hover">상품코드</th>
                                        <th class="no-hover">대분류</th>
                                        <th class="no-hover">중분류</th>
                                        <th class="no-hover">상품이름</th>
                                        <th class="no-hover">가격</th>
                                        <th class="no-hover">수량</th>
                                        <th class="no-hover">등록일</th>
                                        <th class="no-hover">유통기한</th>
                                        <c:forEach var="elem" items="${searchList[2]}" varStatus="i">
                                    <tr>
                                        <td class="no-hover">${i.count}</td>
                                        <td class="no-hover">${elem.f_code}</td>
                                        <td class="no-hover">${elem.c_num}</td>
                                        <td class="no-hover">${elem.c_num2}</td>
                                        <td class="no-hover">${elem.f_title}</td>
                                        <td class="no-hover">${elem.f_price}</td>
                                        <td class="no-hover">${elem.f_count}</td>
                                        <td class="no-hover">${elem.f_date}</td>
                                        <td class="no-hover">${elem.f_edate}</td>
                                    </tr>
                                    </c:forEach>
                                </table>
                                <br><br>
                            </div>
                            </c:when>
                            <c:when test="${status.index == 3 and not empty searchList[3]}">
                                <div style="width: 80%; text-align: center; margin-left: 10%">
                                    <h1 style="color: #4e73df">회원</h1>
                                    <table class='table my-0'>
                                        <tr style='vertical-align: center; background-color: #4e73df; color: white'>
                                            <th class="no-hover">#</th>
                                            <th class="no-hover">이름</th>
                                            <th class="no-hover">아이디</th>
                                            <th class="no-hover">주소</th>
                                            <th class="no-hover">번호</th>
                                            <th class="no-hover">권한</th>
                                            <th class="no-hover">블랙</th>
                                            <c:forEach var="elem" items="${searchList[3]}" varStatus="i">
                                        <tr>
                                            <td class="no-hover">${i.count}</td>
                                            <td class="no-hover">${elem.m_name}</td>
                                            <td class="no-hover">${elem.m_id}</td>
                                            <td class="no-hover">${elem.m_address}</td>
                                            <td class="no-hover">${elem.m_phone}</td>
                                        <c:choose>
                                            <c:when test="${elem.role == 'ADMIN'}">
                                                <td class="no-hover">관리자</td>
                                            </c:when>
                                            <c:when test="${elem.role == 'user'}">
                                                <td class="no-hover">사용자</td>
                                            </c:when>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${elem.m_block == 0}">
                                                <td class="no-hover">일반인</td>
                                            </c:when>
                                            <c:when test="${elem.m_block != 0}">
                                                <td class="no-hover">전과자</td>
                                            </c:when>
                                        </c:choose>
                                        </tr>
                                        </c:forEach>
                                    </table>
                                    <br><br>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <h2>검색 결과가 존재하지 않습니다.</h2>
                            </c:otherwise>
                            </c:choose>
                            </c:if>
                            </c:forEach>
                        </div>
                </main>
                <footer class="bg-white sticky-footer">
                    <div class="container my-auto">
                        <div class="text-center my-auto copyright"><span>Made by 이형구</span></div>
                    </div>
                </footer>
            </div>
            <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>

        </div>
    </div>
    <script src="/assets/js/script.min.js?h=bdf36300aae20ed8ebca7e88738d5267"></script>
</body>
</html>