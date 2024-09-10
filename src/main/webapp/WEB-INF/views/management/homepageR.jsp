<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>E R P</title>
    <link rel="icon" href="/uploadedImg/main/Management/캡처.PNG" type="image/png">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css?h=cb606d99bb2418df19b6bc818b41e412">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="/assets/css/styles.min.css?h=94c76ca45cf1136042bce4cad72a7b5e">
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1.5.1/dist/sockjs.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body id="page-top">
<script>
    let isSelected = 'false'

    function allClickCk(selectAll) {
        const i = document.getElementsByName('selectCk')
        i.forEach((ck)=>{
            ck.checked = selectAll.checked;
        })
    }
    $(document).ready(function() {
        $('#summernote').summernote();
    });
</script>
<!-- 게시글 등록 모달 -->
<div class="modal fade" id="outerModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        id="closeOuterModalButton"></button>
            </div>
            <form>
                <div class="modal-body">
                    <h1 id="outerModalTitle" style="text-align: center"></h1>
                    <div style="display: flex;flex-direction: row;justify-content: space-between">
                        <div class="uploadImg">
                            <img id="previewImg" onclick="popImage(this.src)"><br>
                            <div>
                                <div class="file_input">
                                    <img id="preview" style="width: 300px; height: 300px; border: none"><br>
                                    <label>
                                        <input type="file" id="attachment" name="attachment" onchange="selectFile(this);" multiple>
                                    </label>

                                </div>
                            </div>
                        </div>
                        <div style="display: flex;flex-direction: row-reverse">
                            <div id="modalDetails">

                            </div>
                            <div id="modalDetails2">

                            </div>
                            <div id="modalDetails3">

                            </div>
                            <div id="modalDetails4">

                            </div>
                            <input type="button" id="hiddenSubmit" style="display:none;">
                            <input type="text" id="formSort" style="display: none">
                        </div>
                    </div>
                    <div id="modalDiv">


                        <br>
                        <div>
                            <input class="border-bottom-primary" name="foodItemTitle-modalInput" id="outerContentsTitle" type="text" placeholder="제 목"
                                   style="width: 100%;height: 70px; font-size: xx-large;border: none">
<%--                            <input class="border-bottom-primary" name='foodItemContents-modalInput' id="outerContents" type="text" placeholder="내 용"--%>
<%--                                   style="width: 100%;height: 400px;border: none">--%>
                            <textarea id="summernote" name="summernoteModalContents"></textarea>

                        </div>
                    </div>
                </div>
            </form>

            <div class="modal-footer">
                <a href="javascript:document.querySelector('#hiddenSubmit').click()" onclick="modalInputForm()"
                   id="modal-input-submit" class="btn btn-primary">등록</a>
            </div>
        </div>
    </div>
</div>
<%-- 리스트 상세보기 모달--%>
<div class="modal fade" id="detailsModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <h1 class="modal-title fs-5" id="detailsModalLabel" style="text-align: center">Modal title</h1>
            <hr class="border border-primary border-0.5 opacity-75">
            <div style="justify-content: space-between; display: flex; flex-direction: row">
                <div id="detailsModalImg">
                    여기에 사진 들어갈 예정
                </div>
                <div id="detailsModalInfoUpdate" style="display: none">
                    <input class="dmiu" type="text" style="color: red" value="수정불가" disabled><br>
                    <input class="dmiu" type="text" style="color: red" value="수정불가" disabled><br>
                    <input class="dmiu" type="text" style="color: red" value="수정불가" disabled><br>
                    <input class="dmiu" id="dmiu_f_code" type="text"><br>
                    <input class="dmiu" id="dmiu_c_num" type="text"><br>
                    <input class="dmiu" id="dmiu_c_num2" type="text"><br>
                    <input class="dmiu" id="dmiu_f_price" type="text"><br>
                    <input class="dmiu" id="dmiu_f_count" type="text"><br>
                    <input class="dmiu" id="dmiu_f_origin" type="text"><br>
                    <input class="dmiu" id="dmiu_f_save" type="text"><br>
                    <input class="dmiu" id="dmiu_f_cal" type="text"><br>
                    <input class="dmiu" type="text" style="color: red" value="수정불가" disabled>
                </div>
                <div id="detailsModalInfo">

                </div>
            </div>
            <hr class="border border-primary border-0.5 opacity-100">
            <div class="modal-body" id="detailsModalBody">

            </div>
            <div class="modal-footer">
                <input id="modalDetailsInfoResp" style="display: none" data="">
                <button type="button" class="btn btn-outline-info" onclick="updateInfoOpen()">수정</button>
                <button type="button" class="btn btn-outline-warning" onclick="modalDetailsUpdate()">업데이트</button>
                <button type="button" id="detailsModalCloseBtn" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<%--모달 끝 행복(?) 시작--%>
<div id="wrapper">
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
                <li class="nav-item"><a class="nav-link" href="/main"><i class="fas fa-tachometer-alt"></i>
                    <span> 매출 관리</span></a></li>
                <li class="nav-item"><a class="nav-link" href="/delivery"><i class="fas fa-user"></i>
                    <span> 배송 관리</span></a></li>
                <li class="nav-item"><a class="nav-link active" href="/homepageR"><i class="fas fa-table"></i>
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
    <%--    사이드바 End--%>
    <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
            <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                <div class="container-fluid">
                    <button class="btn btn-link d-md-none rounded-circle me-3" id="sidebarToggleTop" type="button"><i
                            class="fas fa-bars"></i></button>
                        <div class="input-group" style="width: 500px;">
                            <input class="bg-light form-control border-0 small" type="text"
                                                        placeholder="검색어를 입력하세요" onkeypress="commonSearch(this.value, event)">
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
                                <div id="managementAlert"
                                     class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                                    <h6 class="dropdown-header">알림</h6>
                                    <%--                                    <a class="dropdown-item text-center small text-gray-500" href="#">--%>
                                    <%--                                        모든 알림 보기</a>--%>
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
                            <input id="nowId" type="text" value="${m_id}" style="display: none">
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
            <div class="container-fluid">
                <div class="d-sm-flex justify-content-between align-items-center mb-4">
                    <h3 class="text-dark mb-4" id="subHeaderTitle">게시판 관리</h3>
                    <a class="btn btn-primary btn-sm d-none d-sm-inline-block"
                       role="button" href="javascript:window.print()"><i
                            class="fas fa-download fa-sm text-white-50"></i> 보고서 출력</a>
                </div>
                <div class="card shadow">
                    <div class="card-header py-3">
                        <p id="boardTitle" class="text-primary m-0 fw-bold">레시피 게시글 리스트</p>
                        <div class="categorymenu">
                            <button  type="button" class="cgSelector" onclick="cgSort(this)">레시피</button>
                            <button class="cgSelector" onclick="cgSort(this)">식자재</button>
                            <button class="cgSelector" onclick="cgSort(this)">카테고리</button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 text-nowrap">
                                <div id="dataTable_length" class="dataTables_length" aria-controls="dataTable">
                                    <label class="form-label">Show&nbsp;
                                    <select class="d-inline-block form-select form-select-sm" onchange="savePageSize(this.value)">
                                        <option value="10" selected="">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                    </select>
                                    &nbsp</label>
                                    <input type="hidden" id="pageSizeSaveFile" style="display: none">
                                    </div>
                            </div>
                            <div class="col-md-6">

                                <div class="text-md-end dataTables_filter" id="dataTable_filter">
                                    <button type="button" id="detailModal" class="btn btn-primary" data-bs-toggle="modal"
                                            data-bs-target="#detailsModal" style="display: none"></button>
                                    <label class="form-label">
                                        <input type="search" id="pageInSearchForm" class="form-control form-control-sm"
                                               aria-controls="dataTable" placeholder="페이지 내 검색"
                                               onkeypress="pageFSearch(this.value, event)" autocomplete="off">
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive table mt-2" id="dataTable" role="grid"
                             aria-describedby="dataTable_info">
                            <%--                            ====================================================================================--%>
                            <%--데이터 리스트--%>
                            <%--                            ====================================================================================--%>
                            <h1 id="data" style="text-align: center">레시피/식자재 을(를) 선택해주세요</h1>
                        </div>
                        <div id="tableIsHere">

                        </div>
                        <div class="row">
                            <div class="col-md-6 align-self-center">
                                <p id="dataTable_info" class="dataTables_info" role="status" aria-live="polite">
                                    Showing <span id="curPage"></span>,
                                    <span id="startIdx"></span>
                                    to <span id="endIdx"></span>
                                    of List
<%--                                    <span id="totalCnt"></span></p> 전체 글의 갯수. 근데 페이징하고 나서 어떻게 해야될지 모르겠다--%>
                            </div>
                            <div class="col-md-6">
                                <nav class="d-lg-flex justify-content-lg-end dataTables_paginate paging_simple_numbers">
                                    <div id="registerBtn-bottom">

                                    </div>
                                    <ul class="pagination">
                                        <li class="page-item disabled"><a class="page-link" aria-label="Previous"
                                                                          href="#"><span aria-hidden="true">«</span></a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">1</a></li>
                                        <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">2</a></li>
                                        <li class="page-item"><a class="page-link" onclick="pageNumChange(this)" href="javascript:void(0)">3</a></li>
                                        <li class="page-item"><a class="page-link" aria-label="Next" href="#">
                                            <span aria-hidden="true">»</span></a></li>
                                    </ul>
                                    <input id="pageNumSaveFile" type="hidden" style="display: none">
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="bg-white sticky-footer">
            <div class="container my-auto">
                <div class="text-center my-auto copyright"><span>Made by 이형구</span></div>
            </div>
        </footer>
    </div>
    <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
</div>
<script src="/assets/js/script.min.js?h=bdf36300aae20ed8ebca7e88738d5267"></script>
</body>
</html>
