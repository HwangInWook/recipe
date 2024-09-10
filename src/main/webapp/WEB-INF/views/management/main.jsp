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
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1.5.1/dist/sockjs.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <style>
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .modal-content {
            background-color: white;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        #progressBar {
            width: 100%;
            background-color: #f3f3f3;
            border-radius: 20px;
            overflow: hidden;
        }

        #progressBar div {
            height: 30px;
            width: 0;
            background-color: #4caf50;
            text-align: center;
            line-height: 30px;
            color: white;
            border-radius: 20px;
        }
    </style>
</head>
<script>
    window.onload = function () {

        const ctx2 = document.getElementById('MonthlyProfit').getContext('2d');
        let MonthlyProfit = new Chart(ctx2, {
            type: 'bar',
            data: {
                labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                datasets: [{
                    label: 'On/Off',
                    data: ["${monthProfit['1월']}", "${monthProfit['2월']}", "${monthProfit['3월']}",
                        "${monthProfit['4월']}", "${monthProfit['5월']}", "${monthProfit['6월']}",
                        "${monthProfit['7월']}", "${monthProfit['8월']}", "${monthProfit['9월']}",
                        "${monthProfit['10월']}", "${monthProfit['11월']}", "${monthProfit['12월']}"],
                    backgroundColor: [
                        'rgba(255, 0, 0, 0.2)',
                        'rgba(255, 127, 0, 0.2)',
                        'rgba(255, 255, 0, 0.2)',
                        'rgba(127, 255, 0, 0.2)',
                        'rgba(0, 255, 0, 0.2)',
                        'rgba(0, 255, 255, 0.2)',
                        'rgba(0, 0, 255, 0.2)',
                        'rgba(75, 0, 130, 0.2)',
                        'rgba(148, 0, 211, 0.2)',
                        'rgba(255, 105, 180, 0.2)',
                        'rgba(255, 69, 0, 0.2)',
                        'rgba(255, 20, 147, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 0, 0, 1)',
                        'rgba(255, 127, 0, 1)',
                        'rgba(255, 255, 0, 1)',
                        'rgba(127, 255, 0, 1)',
                        'rgba(0, 255, 0, 1)',
                        'rgba(0, 255, 255, 1)',
                        'rgba(0, 0, 255, 1)',
                        'rgba(75, 0, 130, 1)',
                        'rgba(148, 0, 211, 1)',
                        'rgba(255, 105, 180, 1)',
                        'rgba(255, 69, 0, 1)',
                        'rgba(255, 20, 147, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    tooltip: {
                        callbacks: {
                            label: function (tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw + '￦';
                            }
                        }
                    }
                }
            }
        })
    }
    document.addEventListener("DOMContentLoaded", function () {
        // 캘린더 초기화
        flatpickr("#calendar", {
            inline: true,
            onChange: function (selectedDates, dateStr, instance) {
                // 날짜가 선택되면 모달을 표시
                const modal = document.getElementById("memoModal");
                document.getElementById("modal-date").innerText = dateStr;

                // 이전에 저장된 메모가 있으면 로드
                const memo = localStorage.getItem(dateStr);
                document.getElementById("modal-memo").value = memo || "";

                modal.style.display = "block";
            }
        });

        function updateProgressBar() {
            const startHour = 9; // 09:00
            const endHour = 18;  // 18:00
            const totalMinutes = (endHour - startHour) * 60; // 총 9시간 = 540분

            const now = new Date(); // 현재 시간 가져오기
            const currentHour = now.getHours();
            const currentMinutes = now.getMinutes();

            // 현재 시간이 오전 9시 이후이고 오후 6시 이전일 때만 계산
            if (currentHour >= startHour && currentHour < endHour) {
                const elapsedMinutes = (currentHour - startHour) * 60 + currentMinutes;
                const progressPercent = (elapsedMinutes / totalMinutes) * 100;

                document.getElementById("progress").style.width = progressPercent + '%';
                document.getElementById('progressPercentage').innerHTML = document.getElementById("progress").style.width
                document.getElementById("progress").innerHTML = Math.round(progressPercent) + '%';
            } else if (currentHour < startHour) {
                // 오전 9시 이전일 경우 진행률 0%
                document.getElementById("progress").style.width = '0%';
                document.getElementById("progress").innerHTML = '0%';
            } else {
                // 오후 6시 이후일 경우 진행률 100%
                document.getElementById("progress").style.width = '100%';
                document.getElementById("progress").innerHTML = '100%';
            }
        }

        updateProgressBar();
        setInterval(updateProgressBar, 60000);

        // 모달 닫기 기능
        const modal = document.getElementById("memoModal");
        const closeModalBtn = document.getElementsByClassName("close")[0];

        closeModalBtn.onclick = function () {
            modal.style.display = "none";
        }

        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // 메모 저장 기능
        document.getElementById("modal-save-memo").addEventListener("click", function () {
            const selectedDate = document.getElementById("modal-date").innerText;
            const memo = document.getElementById("modal-memo").value;

            if (selectedDate) {
                localStorage.setItem(selectedDate, memo);
                alert("메모가 저장되었습니다.");
                modal.style.display = "none"; // 저장 후 모달 닫기
            } else {
                alert("날짜를 선택하세요.");
            }
        });
    });

    function formatNumber(number) {
        return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

</script>
<body id="page-top">
<div id="wrapper">
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
                    <div class="input-group" style="width: 500px">
                        <input id="commonSearch" class="bg-light form-control border-0 small" type="text"
                               placeholder="검색어를 입력하세요" onkeypress="commonSearch(this.value, event)"/>

                        <button class="btn btn-primary py-0" type="button" readonly=""><i class="fas fa-search"></i>
                        </button>
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
            <%--            네비게이션 바 END--%>
            <div class="container-fluid">
                <div class="d-sm-flex justify-content-between align-items-center mb-4">
                    <h3 class="text-dark mb-0">매출 관리</h3>
                    <a class="btn btn-primary btn-sm d-none d-sm-inline-block"
                       role="button" href="javascript:window.print()"><i
                            class="fas fa-download fa-sm text-white-50"></i> 보고서 출력</a>
                </div>
                <div class="row">
                    <div class="col-md-6 col-xl-3 mb-4">
                        <div class="card shadow border-start-primary py-2">
                            <div class="card-body" style="width: 300px; height: 100px">
                                <div class="row align-items-center no-gutters">
                                    <div class="col me-2">
                                        <div class="text-uppercase text-primary fw-bold text-xs mb-1"><span>일간 매출</span>
                                        </div>
                                        <div class="text-dark fw-bold h5 mb-0"><span>${dayProfit}￦</span></div>
                                    </div>
                                    <div class="col-auto"><i class="fas fa-calendar fa-2x text-gray-300"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 mb-4">
                        <div class="card shadow border-start-success py-2">
                            <div class="card-body" style="width: 300px; height: 100px">
                                <div class="row align-items-center no-gutters">
                                    <div class="col me-2">
                                        <div class="text-uppercase text-success fw-bold text-xs mb-1"><span>주간 매출</span>
                                        </div>
                                        <div class="text-dark fw-bold h5 mb-0"><span>${weekProfit}￦</span></div>
                                    </div>
                                    <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 mb-4">
                        <div class="card shadow border-start-info py-2">
                            <div class="card-body" style="width: 300px; height: 100px">
                                <div class="row align-items-center no-gutters">
                                    <div class="col me-2">
                                        <div class="text-uppercase text-info fw-bold text-xs mb-1"><span>업무 진행률</span>
                                        </div>
                                        <div class="row g-0 align-items-center">
                                            <div class="col-auto">
                                                <div class="text-dark fw-bold h5 mb-0 me-3"><span
                                                        id="progressPercentage"></span></div>
                                            </div>
                                            <div class="col">
                                                <div class="progress progress-sm">
                                                    <div id="progressBar">
                                                        <div id="progress"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-auto"><i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 mb-4">
                        <div class="card shadow border-start-warning py-2">
                            <div class="card-body" style="width: 300px; height: 100px">
                                <div class="row align-items-center no-gutters">
                                    <div class="col me-2">
                                        <div class="text-uppercase text-warning fw-bold text-xs mb-1">
                                            <span>보류된 업무</span></div>
                                        <div class="text-dark fw-bold h5 mb-0"><span>18</span></div>
                                    </div>
                                    <div class="col-auto"><i class="fas fa-comments fa-2x text-gray-300"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7 col-xl-8">
                        <div class="card shadow mb-4" style="height: 480px">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h6 class="text-primary fw-bold m-0">월간 매출 증감표</h6>
                                <div class="dropdown no-arrow">
                                    <button class="btn btn-link btn-sm dropdown-toggle" aria-expanded="false"
                                            data-bs-toggle="dropdown" type="button"><i
                                            class="fas fa-ellipsis-v text-gray-400"></i></button>
                                    <div class="dropdown-menu shadow dropdown-menu-end animated--fade-in">
                                        <p class="text-center dropdown-header">추가 메뉴</p><a
                                            class="dropdown-item" href="/test"> Test</a><a class="dropdown-item"
                                                                                           href="#"> Another
                                        action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"> Something else here</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="chart-area">
                                    <canvas id="MonthlyProfit" height="320" width="1000"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-xl-4">
                        <div class="card shadow mb-4 no-print" style="height: 480px">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h6 class="text-primary fw-bold m-0">메모장</h6>
                                <div class="dropdown no-arrow">
                                    <button class="btn btn-link btn-sm dropdown-toggle" aria-expanded="false"
                                            data-bs-toggle="dropdown" type="button"><i
                                            class="fas fa-ellipsis-v text-gray-400"></i></button>
                                    <div class="dropdown-menu shadow dropdown-menu-end animated--fade-in">
                                        <p class="text-center dropdown-header">추가 메뉴</p><a
                                            class="dropdown-item" href="#"> Action</a><a class="dropdown-item" href="#"> Another
                                        action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"> Something else here</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div id="calendar"></div>

                                <div id="memoModal" class="modal">
                                    <div class="modal-content">
                                        <span class="close">&times;</span>
                                        <h3><span id="modal-date"></span></h3>
                                        <textarea id="modal-memo" rows="10" cols="30"
                                                  placeholder="메모를 입력하세요..."></textarea>
                                        <button class="btn btn-primary" id="modal-save-memo">Save Memo</button>
                                    </div>
                                </div>
                                <div class="text-center small mt-4">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4 draggable">
                                <div class="card-header py-3">
                                    <h6 class="text-primary fw-bold m-0">연령대별 구매분석 [회원가입시 나이 수집 안해서 없어짐..]</h6>
                                </div>
                                <div class="card-body">
                                    <h4 class="small fw-bold">10대<span class="float-end">20%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-danger" aria-valuenow="20" aria-valuemin="0"
                                             aria-valuemax="100" style="width: 20%;"><span
                                                class="visually-hidden">20%</span></div>
                                    </div>
                                    <h4 class="small fw-bold">20대<span class="float-end">40%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-warning" aria-valuenow="40" aria-valuemin="0"
                                             aria-valuemax="100" style="width: 40%;"><span
                                                class="visually-hidden">40%</span></div>
                                    </div>
                                    <h4 class="small fw-bold">30대<span class="float-end">60%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-primary" aria-valuenow="60" aria-valuemin="0"
                                             aria-valuemax="100" style="width: 60%;"><span
                                                class="visually-hidden">60%</span></div>
                                    </div>
                                    <h4 class="small fw-bold">40대<span class="float-end">80%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-info" aria-valuenow="80" aria-valuemin="0"
                                             aria-valuemax="100" style="width: 80%;"><span
                                                class="visually-hidden">80%</span></div>
                                    </div>
                                    <h4 class="small fw-bold">50대<span class="float-end">100%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-success" aria-valuenow="100" aria-valuemin="0"
                                             aria-valuemax="100" style="width: 100%;"><span
                                                class="visually-hidden">100%</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="card shadow mb-4 draggable">
                                <div class="card-header py-3">
                                    <h6 class="text-primary fw-bold m-0">할 일</h6>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col me-2">
                                                <h6 class="mb-0"><strong>점심 먹기</strong></h6><span
                                                    class="text-xs">12:20 PM</span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="form-check"><input id="formCheck-1" class="form-check-input"
                                                                               type="checkbox"/><label
                                                        class="form-check-label" for="formCheck-1"></label></div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col me-2">
                                                <h6 class="mb-0"><strong>낮잠 자기</strong></h6><span
                                                    class="text-xs">12:40 PM</span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="form-check"><input id="formCheck-2" class="form-check-input"
                                                                               type="checkbox"/><label
                                                        class="form-check-label" for="formCheck-2"></label></div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col me-2">
                                                <h6 class="mb-0"><strong>퇴근 하기</strong></h6><span
                                                    class="text-xs">20:30 PM</span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="form-check"><input id="formCheck-3" class="form-check-input"
                                                                               type="checkbox"/><label
                                                        class="form-check-label" for="formCheck-3"></label></div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col">
                            <div class="row">
                                <div class="col-lg-6 mb-4" style="width: 815px">
                                    <div class="card text-white bg-primary shadow">
                                        <div class="card-body">
                                            <p class="m-0" style="">팀명 : 기가막히조</p>
                                            <pre class="text-white-50 small m-0"> </pre>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card text-white bg-success shadow">
                                        <div class="card-body" style="height: 565px">
                                            <p class="m-0" style="font-size: xx-large">완료된 작업</p>
                                            <br>
                                            <br>
                                            <ul>
                                                <li>
                                                    일간 매출은 금일 주문된 상품들의 합산 금액을 가져옵니다.
                                                </li>

                                                <li>
                                                    업무 진행률은 금일 오전 09시부터 오후 06시까지의 진행률 그래프로, 퇴근까지 남은 퍼센트를 알려줍니다
                                                </li>

                                                <li>
                                                    월간 매출 증감표는 각 월별 매출액을 가져옵니다.
                                                </li>
                                                <li>
                                                    메모장은 본연의 기능을 잘 수행합니다. 다만 css가 조금 빈약합니다
                                                </li>
                                            </ul>
                                            <p class="text-white-50 small m-0">
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card text-white bg-info shadow">
                                        <div class="card-body" style="height: 565px">
                                            <p class="m-0" style="font-size: xx-large">미완료 작업</p>
                                            <br>
                                            <br>
                                            <ul>
                                                <li>
                                                    연령대별 구매분석. 어려울게 없으나 데이터가 없어 구현하지 못했습니다
                                                </li>
                                                <li>
                                                    주간 매출은 오늘부터 7일전까지의 합산 금액 로직을 짜놨는데 결과가 이상하네요
                                                </li>
                                                <li>
                                                    보류된 업무는 껍데기입니다.
                                                </li>
                                                <li>
                                                    월간 매출 증감표와 메모장 영역에는 추가메뉴 버튼이 있지만 별도의 기능은 없습니다
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
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