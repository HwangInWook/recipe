<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 31.
  Time: 오후 3:51
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
<style>
    .myPageCgSort:hover {
        background-color: #77b347;
        color: white;
    }

    /*.myPageCgSort activated {*/
    /*    background-color: #77b347;*/
    /*    color: white;*/
    /*}*/
</style>
<script>
    function myPageCgSelector(value) {
        console.log(value.innerText)
        let insertDiv = $('#dataIsHere')
        let str = "";
        switch (value.innerText) {
            case "쇼핑내역":
                str += '<div style="margin-top: 50px">';
                str += '    <div style="justify-content: space-between; display: flex; flex-direction: row">';
                str += '        <div>';
                str += '            <h5 style="font-weight: bold; color: black">진행중인 주문</h5>';
                str += '        </div>';
                str += '        <div>';
                str += '            <button>주문전체보기</button>';
                str += '        </div>';
                str += '    </div>';
                str += '    <div>';
                str += '        <img src="/uploadedImg/main/member/주문내역이%20없습니다.PNG">';
                str += '    </div>';
                str += '</div>';
                str += '<div style="margin-top: 50px">';
                str += '    <div style="justify-content: space-between; display: flex; flex-direction: row">';
                str += '        <div>';
                str += '            <h5 style="font-weight: bold; color: black">지금 인기 있는 상품</h5>';
                str += '        </div>';
                str += '        <div>';
                str += '            <p>광고</p>';
                str += '        </div>';
                str += '    </div>';
                str += '    <div style="display: flex; flex-direction: row">';
                str += '        <div style="display: flex; flex-direction: column">';
                str += '            <img style="width: 170px; height: 170px; margin-right: 15px" src="/uploadedImg/main/noImg.png">';
                str += '        </div>';
                str += '        <div style="display: flex; flex-direction: column">';
                str += '            <img style="width: 170px; height: 170px; margin-right: 15px" src="/uploadedImg/main/noImg.png">';
                str += '        </div>';
                str += '        <div style="display: flex; flex-direction: column">';
                str += '            <img style="width: 170px; height: 170px; margin-right: 15px" src="/uploadedImg/main/noImg.png">';
                str += '        </div>';
                str += '        <div style="display: flex; flex-direction: column">';
                str += '            <img style="width: 170px; height: 170px; margin-right: 15px" src="/uploadedImg/main/noImg.png">';
                str += '        </div>';
                str += '        <div style="display: flex; flex-direction: column">';
                str += '            <img style="width: 170px; height: 170px" src="/uploadedImg/main/noImg.png">';
                str += '        </div>';
                str += '    </div>';
                str += '</div>';
                insertDiv.html(str)
                break;
            case "혜택*이벤트":
                str += '<div style="margin-top: 50px">';
                str += '    <div style="justify-content: space-between; display: flex; flex-direction: row">';
                str += '        <img src="/uploadedImg/main/member/24년산스탬프.PNG">';
                str += '    </div>';
                str += '</div>';
                str += '<div style="margin-top: 50px">';
                str += '    <div style="justify-content: space-between; display: flex; flex-direction: row">';
                str += '        <div>';
                str += '            <h5 style="font-weight: bold; color: black">진행 중인 이벤트</h5>';
                str += '        </div>';
                str += '        <div>';
                str += '            <button>전체보기</button>';
                str += '        </div>';
                str += '    </div>';
                str += '    <div style="display: flex; flex-direction: row">';
                str += '        <div style="display: flex; flex-direction: column">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/마이페이지%20한솔냉면.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/마이페이지%20챌린지식단.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/쿠폰.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/롯데카드.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/신한카드%20마이샵.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/현대백화점%20우수고객.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/m포인트.jpg">';
                str += '        </div>';
                str += '        <div style="display: flex; flex-direction: column">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/마이페이지%20서포터즈.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/마이페이지%20여름집밥.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/웰컴쿠폰.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/삼성카드.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/그리팅카드%20제휴.jpg">';
                str += '            <img style="margin-right: 15px; margin-top: 15px" src="/uploadedImg/main/member/블루멤버스.jpg">';
                str += '        </div>';
                str += '    </div>';
                str += '</div>';
                insertDiv.html(str)
                break;
            case "헬스케어":
                str += '<div style="margin-top: 100px">';
                str += '    <div style="justify-content: space-between; display: flex; flex-direction: row">';
                str += '        <img src="/uploadedImg/main/member/그리팅%20영양%20진단%20서비스.jpg">';
                str += '    </div>';
                str += '</div>';
                str += '<div style="margin-top: 50px">';
                str += '    <table>';
                str += '        <tr>';
                str += '            <th><button>영양진단 서비스</button></th>';
                str += '            <th> | </th>';
                str += '            <th><button>밥BTI 테스트</button></th>';
                str += '            <th colspan="5"><pre>     </pre></th>';
                str += '        </tr>';
                str += '        <tr class="table-group-divider">';
                str += '            <th>진단 설문 내역</th>';
                str += '            <th colspan="5"><pre>     </pre></th>';
                str += '        </tr>';
                str += '        <tr class="table-group-divider">';
                str += '            <th colspan="8"><img src="/uploadedImg/main/member/설문내역이%20없습니다.PNG"></th>';
                str += '        </tr>';
                str += '        <tr class="table-group-divider">';
                str += '        </tr>';
                str += '    </table>';
                str += '</div>';
                insertDiv.html(str)
                break;
            default:
                console.log("해당안됨")
        }
    }

</script>
<h1 style="font-size: large; margin-top: 10px; margin-left: 400px">HOME > 마이페이지</h1>
<main style="display: flex; flex-direction: row">
    <aside style="width: 10%; margin-top: 60px; margin-left: 400px">
        <p style="font-size: xx-large; font-weight: bold; color: black">마이페이지</p>
        <hr style="border: 2px solid #77b347">
        <p style="font-weight: bold; color: black">나의 쇼핑 내역</p>
        <a href="#" style="">주문/배송 조회*변경</a><br>
        <a href="#">취소/교환/반품 조회</a><br>
        <a href="#">일자별 배송상품 조회</a><br>
        <a href="#">구독 관리</a><br>
        <hr>
        <p style="font-weight: bold; color: black">나의 혜택관리</p>
        <a href="#">나의 포인트</a><br>
        <a href="#">나의 쿠폰</a><br>
        <a href="#">나의 기프트카드</a><br>
        <hr>
        <p style="font-weight: bold; color: black">나의 커뮤니티</p>
        <a href="#">1:1 문의 내역</a><br>
        <a href="#">나의 상품리뷰</a><br>
        <a href="#">BEST 리뷰 라운지</a><br>
        <a href="#">나의 상품문의</a><br>
        <a href="#">고객의 소리</a><br>
        <hr>
        <p style="font-weight: bold; color: black">회원정보</p>
        <a href="#">회원정보 수정</a><br>
        <a href="#">마케팅 수신 동의 설정</a><br>
        <a href="#">배송지 관리</a><br>
        <a href="#">H.Point Pay 관리</a><br>
        <a href="#">그리팅페이 관리</a><br>
        <a href="#">로그인 기록 관리</a><br>
        <a href="#">회원 탈퇴</a><br>
    </aside>
    <section style="margin-left: 50px; margin-top: 50px; width: 900px; display: flex; flex-direction: column">
        <div style="display: flex; flex-direction: row">
            <table>
                <tr>
                    <th>
                        <button type="button" class="myPageCgSort activated" onclick="myPageCgSelector(this)"
                                style="width: 300px; height: 60px; border-radius: 4px">쇼핑내역
                        </button>
                    </th>
                    <th>
                        <button type="button" class="myPageCgSort" onclick="myPageCgSelector(this)"
                                style="width: 300px; height: 60px; border-radius: 4px">혜택*이벤트
                        </button>
                    </th>
                    <th>
                        <button type="button" class="myPageCgSort" onclick="myPageCgSelector(this)"
                                style="width: 300px; height: 60px; border-radius: 4px">헬스케어
                        </button>
                    </th>
                </tr>
            </table>
        </div>
        <hr>
        <div>
            <table>
                <tr>
                    <th><a href="#"><sec:authorize access="isAuthenticated()">
                        <span style="font-weight: bold; color: black">${sessionScope.m_name}</span>님>
                    </sec:authorize></a></th>
                </tr>
            </table>
        </div>
        <div id="dataIsHere">
            <div style="margin-top: 50px">
                <div style="justify-content: space-between; display: flex; flex-direction: row">
                </div>
                <div>
                    <%--   <img src="/uploadedImg/main/member/주문내역이%20없습니다.PNG">--%>
                    ${requestScope.orderTable}
                    <%--<section class="orderPayment__sect accordion itemConfirm">
                        <div class="orderPayment__cont" id="dvCartListArea" style="padding-bottom: 0;">
                            <strong id="normalTitle" class="itemConfirm__title normal-title">-진행중인 주문</strong>
                            <div class="planMeals box" id="normal-item">
                                <div class="box__list single">
                                    <strong class="title">
                                        <a href="javascript(0):void">
                                            [워크맨] 직장인 단백질 도시락 A 세트(6개입)
                                        </a>
                                    </strong>
                                    <div class="boxInner">
                                        <figure class="boxInner__thumb">
                                            <img src="./그리팅몰 __ 우리집 밥상주치의, 그리팅_files/B_F99317A175504277AB35E79D13A825A6.jpg">
                                        </figure>
                                        <div class="detail">
                                            <div class="detail__lft"><p class="boxInner__txt">옵션 : [워크맨] 직장인 단백질 도시락 A
                                                세트(6개입)</p>
                                                <p class="boxInner__txt">수량 : 1개 </p>
                                            </div>
                                            <div class="detail__rgt price">
                                                   <span class="price__list" id="total_price_list">상품금액
                                                       <span class="num">48,000원</span>
                                                   </span>
                                                <strong class="price__list">결제예정금액 <span class="num">33,600원</span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>--%>
                        ${pageHtml}
                </div>
            </div>
        </div>
    </section>

    <div class="modal" tabindex="-1" id="exampleModal">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-body">
                    <section class="orderPayment__sect itemConfirm detail"style="margin: auto">
                        <div class="orderPayment__cont" id="dvCartListArea" style="padding-bottom: 0;">
                            <strong id="normalTitle" class="itemConfirm__title normal-title">- 주문 상세목록</strong>
                            <div class="planMeals box" id="normal-item">
                                <div class="box__list single">
                                    <strong class="title">
                                        <a href="javascript(0):void" onclick="modalOpen('88')">
                                            [워크맨] 직장인 단백질 도시락 A 세트(6개입)
                                        </a>
                                    </strong>
                                    <div class="boxInner">
                                        <figure class="boxInner__thumb">
                                            <img img src="/uploadedImg/fooditem/1722930023899.png">
                                        </figure>
                                        <div class="detail">
                                            <div class="detail__lft"><p class="boxInner__txt">옵션 : [워크맨] 직장인 단백질 도시락 A
                                                세트(6개입)</p>
                                                <p class="boxInner__txt">수량 : 1개 </p>
                                            </div>
                                            <div class="detail__rgt price">
                                                   <span class="price__list" id="total_price_list">상품금액
                                                       <span class="num">48,000원</span>
                                                   </span>
                                                <strong class="price__list">결제예정금액 <span class="num">33,600원</span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <button id="aaa" style="display: none" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"></button>
</main>
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
<script>
    const dvModal = document.getElementsByClassName("modal-body");
    const modalBtn = document.getElementById('aaa')
    function modalOpen(value){
        $.ajax({
            method:"get",
            url:"/member/orderListDetail?o_num="+value
        }).done(resp=>{
            dvModal[0].innerHTML = resp
            modalBtn.click()
        }).fail(err=>{console.log(err)})
    }
    function paging(num){
        location.href = "/member/mypage?pageNum="+num;
    }
</script>
</body>
</html>
