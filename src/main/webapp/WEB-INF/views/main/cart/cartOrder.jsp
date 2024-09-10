<%--
  Created by IntelliJ IDEA.
  User: dnjs1
  Date: 24. 7. 26.
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css?h=3f30c2c47d7d23c7a994db0c862d45a5">
    <link rel="stylesheet" href="/assets/css/styles.min.css?h=6d2b55c3ffb187d621f0d89bb787a721">
</head>
<style>
    .right-box {
        position: sticky;
        top: 0;
    }
</style>
<body id="orderPayment" class="hd">
<jsp:include page="../common/header.jsp"></jsp:include>
<div id="wrap">
    <main id="contents" class="hd__orderPayment">
        <ul class="breadcrumb">
            <li>HOME</li>
            <li>주문결제</li>
        </ul>
        <input type="hidden" name="UR_BAND_ID" value="1" id="UR_BAND_ID">
        <input type="hidden" name="LAST_GTPAY_PAY_GRP_ID" value="" id="LAST_GTPAY_PAY_GRP_ID">
        <input type="hidden" name="SCROLL_X" value="0" id="SCROLL_X">
        <input type="hidden" name="SCROLL_Y" value="0" id="SCROLL_Y">
        <div class="orderPayment hd__inner1100">
            <h2 class="hd__page-title">주문결제</h2>
            <div class="orderPayment__inner">
                <div class="left-box">
                    <section class="orderPayment__sect accordion ordererInfo" id="dvBuyerArea">
                        <h3 class="orderPayment__title accordion__head accordion__head--on">주문자 정보</h3>
                        <a style="display: none;" href="" class="btn-init green btn-chkMember btn__modal-open">회원조회</a>
                        <div class="orderPayment__cont ordererInfo__cont accordion__cont">
                            <div class="ordererInfo__list">
                                <label class="form-label form-label form_title" for="BUYER_NAME">이름<span
                                        class="hd__necessar">*</span></label>
                                <div class="input_type">
                                    <input type="text" name="BUYER_NAME" class="input_text" id="BUYER_NAME"
                                           value="${name}"
                                           title="이름" placeholder="주문자 이름" maxlength="44" readonly="readonly"></div>
                            </div>
                            <div class="ordererInfo__list">
                                <label class="form-label form-label form_title" for="BUYER_EMAIL">이메일<span
                                        class="hd__necessar">*</span></label>
                                <div class="input_type email">
                                    <input type="text" name="BUYER_EMAIL_1" class="input_text email-id"
                                           id="BUYER_EMAIL_1" value="${memberId1}" title="주문하시는 분의 이메일"
                                           readonly="readonly">
                                    <span class="email-at">@</span>
                                    <input type="text" name="BUYER_EMAIL_2" class="input_text email-address"
                                           id="BUYER_EMAIL_2" value="${memberId2}" readonly="readonly">
                                </div>
                            </div>
                            <div class="ordererInfo__list">
                                <label class="form-label form-label form_title" for="BUYER_PHONE_MOBILE_1">휴대폰번호<span
                                        class="hd__necessar">*</span></label>
                                <div class="input_type phone">
                                    <div class="hd__custom-select"
                                         style="display: inline-block;width: 110px;vertical-align: top;">
                                        <select class="inputMobile" name="BUYER_PHONE_MOBILE_1"
                                                id="BUYER_PHONE_MOBILE_1" title="주문자 휴대폰번호">
                                            <option value="">선택</option>
                                            <option value="" selected="">010</option>
                                            <option value="">011</option>
                                            <option value="">016</option>
                                            <option value="">017</option>
                                            <option value="">018</option>
                                            <option value="">019</option>
                                        </select>
                                    </div>
                                    <span><em class="blind">하이픈</em></span>
                                    <input type="text" name="BUYER_PHONE_MOBILE_2" value="${phoneNumber1}"
                                           class="input_text"
                                           id="BUYER_PHONE_MOBILE_2" placeholder="" title="주문자 휴대폰번호" maxlength="4"
                                           readonly="readonly">
                                    <span><em class="blind">하이픈</em></span>
                                    <input type="text" name="BUYER_PHONE_MOBILE_3" value="${phoneNubmer2}"
                                           class="input_text"
                                           id="BUYER_PHONE_MOBILE_3" placeholder="" title="주문자 휴대폰번호" maxlength="4"
                                           readonly="readonly">
                                </div>
                                <input type="hidden" name="BUYER_EMAIL" id="BUYER_EMAIL" value="m_id">
                                <input type="hidden" name="BUYER_PHONE_MOBILE" value="phoneNumber"
                                       id="BUYER_PHONE_MOBILE">
                                <input type="hidden" name="BUYER_BCODE" value="" id="BUYER_BCODE">
                                <input type="hidden" name="BUYER_ZIP_CD" value="" id="BUYER_ZIP_CD">
                                <input type="hidden" name="BUYER_ADDR1" value="" id="BUYER_ADDR1">
                                <input type="hidden" name="BUYER_ADDR2" value="" id="BUYER_ADDR2">
                                <input type="hidden" name="BUYER_UR_USER_ID" value="" id="BUYER_UR_USER_ID">
                                <input type="hidden" name="BUYER_USER_LOGIN_ID" value="" id="BUYER_USER_LOGIN_ID">
                                <input type="hidden" name="BUYER_UR_GROUP_ID" value="" id="BUYER_UR_GROUP_ID">
                                <input type="hidden" name="BF_PS_PAY_GRP_ID" value="" id="BF_PS_PAY_GRP_ID">
                                <div id="receiverMsgDiv" class="hd-checkbox receiverMsg"
                                     style="display: block;margin-top: 5px;padding-left: 155px;">
                                    <%--<input type="checkbox" class="hidden" id="receiverMsg" data-checked="y">
                                    <label class="form-label form-label" for="receiverMsg">받는 분께 알림 메시지 전송</label>--%>
                                    <%--<span class="Qmark ico_tooltip btn__modal-open"
                                          style="display: inline-block;"></span>--%>
                                </div>
                            </div>
                            <input type="hidden" name="RECV_ETC_YN" value="" id="RECV_ETC_YN">
                        </div>
                    </section>
                    <section id="deliveryInfoSection" class="orderPayment__sect accordion deliveryInfo">
                        <h3 class="orderPayment__title accordion__head accordion__head--on">배송지 정보
                            <span><strong>※ 설 선물 안심배송 안내</strong>설 선물세트는 현대백화점 명절배송 센터에서 직접 받는 분께 주소지와 희망 배송일을 확인 후 배송합니다.</span>
                        </h3>
                        <div id="sendDeliveryInfo">
                            <input type="hidden" name="RECEIVER_ADDR_ID" id="RECEIVER_ADDR_ID" value="">
                            <input type="hidden" name="RECEIVER_NAME" id="RECEIVER_NAME" value="">
                            <input type="hidden" name="RECEIVER_BCODE" id="RECEIVER_BCODE" value="">
                            <input type="hidden" name="RECEIVER_ZIP_CD" id="RECEIVER_ZIP_CD" value="">
                            <input type="hidden" name="RECEIVER_ADDR1" id="RECEIVER_ADDR1" value="">
                            <input type="hidden" name="RECEIVER_ADDR2" id="RECEIVER_ADDR2" value="">
                            <input type="hidden" name="RECEIVER_PHONE_MOBILE" id="RECEIVER_PHONE_MOBILE" value="">
                            <input type="hidden" name="RECEIVER_PHONE_ADDED" id="RECEIVER_PHONE_ADDED" value="">
                            <input type="hidden" name="RECEIVER_PHONE_MOBILE_1" id="RECEIVER_PHONE_MOBILE_1" value="">
                            <input type="hidden" name="RECEIVER_PHONE_MOBILE_2" id="RECEIVER_PHONE_MOBILE_2" value="">
                            <input type="hidden" name="RECEIVER_PHONE_MOBILE_3" id="RECEIVER_PHONE_MOBILE_3" value="">
                            <input type="hidden" name="fsCode" id="fsCode" value="">
                            <input type="hidden" name="fsName" id="fsName" value="">
                            <input type="hidden" id="deliveryTabNm" value="deliveryInfo-tab2">
                            <input type="hidden" name="BASIC_ADDRESS_YN" id="BASIC_ADDRESS_YN" value="">
                            <input type="hidden" name="DAWN_DELIVERY_YN" id="DAWN_DELIVERY_YN" value="">
                        </div>
                        <div class="accordion__cont deliveryInfo__cont">
                            <div>
                                <ul class="tab-menu clearfix">
                                    <li class="tab-menu__list" data-tab="deliveryInfo-tab1" id="selectDelivery"><a
                                            href=""
                                            class="active">최근 배송지</a></li>
                                    <li class="tab-menu__list tab-list-v2--on tab-menu__list--on"
                                        data-tab="deliveryInfo-tab2" id="newDelivery"><a
                                            href=""
                                            class="active">신규 배송지</a></li>
                                </ul>
                                <span class="address-list"><a class="btn__modal-open" data-login="n"
                                                              data-popup-name="popup_deliveryList">배송지 목록 모두 보기</a></span>
                                <div class="ordinary tab-content" id="deliveryInfo-tab1">
                                    <ul class="box" id="dvOrdDeliList"></ul>
                                </div>
                                <div class="newAddress tab-content current tab-content--show" id="deliveryInfo-tab2">
                                    <%--<div class="hd-checkbox newAddress__sameAs">
                                        <input type="checkbox" class="hidden" id="sameAs" name="sameAs" value=""
                                               data-checked="n">
                                        <label class="form-label form-label" for="sameAs">주문자 정보와 동일</label>
                                    </div>--%>
                                    <div class="newAddress__list">
                                        <label class="form-label form-label form_title" for="NEW_RECEIVER_NAME">받는
                                            분<span class="hd__necessar">*</span></label>
                                        <div class="input_type adress">
                                            <input type="text" name="name" class="input_text"
                                                   id="NEW_RECEIVER_NAME" title="받으시는 분" placeholder="받으시는분 성함">
                                        </div>
                                    </div>
                                    <div class="newAddress__list">
                                        <label class="form-label form-label form_title"
                                               for="NEW_RECEIVER_ZIP_CD">주소<span class="hd__necessar">*</span></label>
                                        <div class="input_type adress" data-address-wrap="">
                                            <input type="hidden" name="bCode" id="NEW_RECEIVER_BCODE"
                                                   data-address-bcode="">
                                            <input type="text" name="post"
                                                   class="input_text input--dim new--zipCode" id="NEW_RECEIVER_ZIP_CD"
                                                   title="우편번호" placeholder="우편번호" readonly="readonly">
                                            <button type="button" class="btn--findAdd" onclick="daumPostcode()">주소찾기
                                            </button>
                                            <input type="text" name="addr1"
                                                   class="input_text full input--dim" id="NEW_RECEIVER_ADDR1"
                                                   title="받으시는 분의 주소" placeholder="받으시는 분의 주소" readonly="readonly">
                                            <input type="text" name="addr2" class="input_text full"
                                                   id="NEW_RECEIVER_ADDR2" title="받으시는 분의 상세 주소"
                                                   placeholder="받으시는 분의 상세주소"
                                                   data-address2="">
                                        </div>
                                    </div>
                                    <div class="newAddress__list">
                                        <label class="form-label form-label form_title" for="RECEIVER_PHONE_MOBILE_1">
                                            휴대폰번호<span class="hd__necessar">*</span>
                                        </label>
                                        <div class="input_type phone">
                                            <div class="hd__custom-select"
                                                 style="margin-left: 0;width: 140px;display: inline-block;">
                                                <select class="memberSelect inputMobile"
                                                        name="NEW_RECEIVER_PHONE_MOBILE_1"
                                                        id="NEW_RECEIVER_PHONE_MOBILE_1" title="받으시는 분의 휴대폰번호">
                                                    <option value="">선택</option>
                                                    <option value="010">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="018">018</option>
                                                    <option value="019">019</option>
                                                </select>
                                            </div>
                                            <span><em class="blind">하이픈</em></span>
                                            <input type="text" name="phone1" value=""
                                                   class="input_text" id="NEW_RECEIVER_PHONE_MOBILE_2"
                                                   title="받으시는 분의 휴대폰번호" maxlength="4">
                                            <span><em class="blind">하이픈</em></span>
                                            <input type="text" name="phone2" value=""
                                                   class="input_text" id="NEW_RECEIVER_PHONE_MOBILE_3"
                                                   title="받으시는 분의 휴대폰번호" maxlength="4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ordererInfo">
                                <div id="deliveryBtn" class="demand" style="display: none;">
                                    <label class="form-label form-label demand__title">배송방법</label>
                                    <div class="demand__cont">
                                        <div class="checks_btn">
                                            <div id="dawnDeliveryDiv" class="hd-checkbox" style="display: none;">
                                                <input type="checkbox" class="hidden" id="dawnDelivery"
                                                       data-checked="n">
                                                <label class="form-label form-label" id="dawnDeliveryLabel"
                                                       for="dawnDelivery">새벽배송 (아침 7시 이전 배송)</label>
                                            </div>
                                            <div id="normalDeliveryDiv" class="hd-checkbox on">
                                                <input type="checkbox" class="hidden" id="normalDelivery"
                                                       data-checked="y">
                                                <label class="form-label form-label" id="normalDeliveryLabel"
                                                       for="normalDelivery">일반배송 (롯데택배)</label>
                                            </div>
                                            <div id="normalDeliveryDiv2" class="hd-checkbox" style="display: none;">
                                                <span> 일반배송 </span>
                                            </div>
                                        </div>
                                        <ul class="guide_text" style="margin-top: 15px;">
                                            <li> ※ 기상 여건 및 도로 상황, 배송사의 사정에 따라 도착 시간이 지연 될 수 있습니다.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="orderPayment__sect accordion itemConfirm">
                        <div class="orderPayment__cont accordion__cont" id="dvCartListArea" style="padding-bottom: 0;">
                            <strong id="normalTitle" class="itemConfirm__title normal-title">주문상품 확인</strong>
                            <div class="planMeals box" id="normal-item">
                                <div class="box__list single">
                                    ${cartOrder}
                                    <%--  <input type="hidden" class="dvCartCount" id="dvCartCount_16466933"
                                             value="1">
                                      <input type="hidden" class="dvCartDetlId" id="dvCartDetlId_16466933"
                                             value="16466933">
                                      <strong class="title">[워크맨] 직장인 단백질 도시락 A 세트(6개입)</strong>
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
                                      </div>--%>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="right-box">
                    <div>
                        <section class="orderPayment__sect priceArea">
                            <h3 class="orderPayment__title">결제금액</h3>
                            <ul class="box">
                                <li class="box__list">
                                    <input type="hidden" id="paymentTotalMarketPrice" value="0">
                                    <strong class="txt-lft">총 상품금액</strong>
                                    <strong class="txt-rgt">
                                        <span id="dvPaymentTotalMarketPrice">${price}</span>원
                                    </strong>
                                </li>
                                <li class="box__list total">
                                    <strong class="txt-lft">총 결제 예정금액</strong>
                                    <span class="txt-rgt">
                                        <strong class="price">
                                            <span id="dvPaymentTotalPaymentPrice">${price}</span>원</strong>
                                    </span>
                                </li>
                            </ul>
                            <%--<div class="hd-checkbox agree">
                                <ul>
                                    <li><input type="checkbox" class="hidden" id="chkAgreeAll" data-checked="n"><label
                                            class="form-label form-label" for="chkAgreeAll">필수 항목에 모두 동의합니다.</label>
                                        <ol id="agreeOl">
                                            <li>
                                                <input type="checkbox" class="hidden" id="chkAgree6" name=""
                                                       data-checked="n">
                                                <label class="form-label form-label" for="chkAgree6">전자금융거래 이용약관 동의
                                                    (필수)</label>
                                                <a href="https://www.greating.co.kr/order/orderPayment?shippingType=1&amp;selectCompanyId=&amp;cartIds=&amp;mixOrderYn=N&amp;CART_TYPE=C&amp;cartDetlIds=16466933&amp;BROCHURE_YN=N"
                                                   class="detail-btn btn__modal-open" data-login="n"
                                                   data-popup-name="popup_agreeDetail" data-agreeidx="6">
                                                </a>
                                            </li>
                                            <li id="agree5Li" style="display: none;">
                                                <input type="checkbox" class="hidden" id="chkAgree5" name=""
                                                       data-checked="n">
                                                <label class="form-label form-label" for="chkAgree5">개인정보 수집 및 이용 동의
                                                    (필수)</label>
                                                <a href="https://www.greating.co.kr/order/orderPayment?shippingType=1&amp;selectCompanyId=&amp;cartIds=&amp;mixOrderYn=N&amp;CART_TYPE=C&amp;cartDetlIds=16466933&amp;BROCHURE_YN=N"
                                                   class="detail-btn btn__modal-open" data-login="n"
                                                   data-popup-name="popup_agreeDetail" data-agreeidx="5">
                                                </a>
                                            </li>
                                            <li id="agree7Li" style="display: none;">
                                                <input type="checkbox" class="hidden" id="chkAgree7" name=""
                                                       data-checked="n">
                                                <label class="form-label form-label" for="chkAgree7">
                                                    개별판매자 개인정보 제공안내 (필수)</label>
                                                <a href="https://www.greating.co.kr/order/orderPayment?shippingType=1&amp;selectCompanyId=&amp;cartIds=&amp;mixOrderYn=N&amp;CART_TYPE=C&amp;cartDetlIds=16466933&amp;BROCHURE_YN=N"
                                                   class="detail-btn btn__modal-open" data-login="n"
                                                   data-popup-name="popup_agreeDetail" data-agreeidx="7">
                                                </a>
                                            </li>
                                            <li id="agree8Li" style="display: none;">
                                                <input type="checkbox" class="hidden" id="chkAgree8" name=""
                                                       data-checked="n">
                                                <label class="form-label form-label" for="chkAgree8">
                                                    개별판매자 개인정보 제공안내 (필수)</label>
                                                <a href="https://www.greating.co.kr/order/orderPayment?shippingType=1&amp;selectCompanyId=&amp;cartIds=&amp;mixOrderYn=N&amp;CART_TYPE=C&amp;cartDetlIds=16466933&amp;BROCHURE_YN=N"
                                                   class="detail-btn btn__modal-open" data-login="n"
                                                   data-popup-name="popup_agreeDetail" data-agreeidx="8"></a></li>
                                        </ol>
                                    </li>
                                </ul>
                            </div>--%>
                        </section>
                        <button class="btn-init green btn-pay" id="dvOrder" onclick="dvOrder()">결제하기
                        </button>
                        <button class="btn-init white btn-cancel" id="dvCancelOrder" onclick="cancel()">취소</button>
                        <input type="hidden" name="jointYN" id="jointYN" value="N">
                        <input type="hidden" name="jointDate" id="jointDate" value="">
                        <input type="hidden" name="jointDetlId" id="jointDetlId" value=""></div>
                </div>
            </div>
        </div>
    </main>
</div>
<form id="inputOrderForm" method="post" action="/cart/inputOrder" target="blankifr" style="display:none;"></form>
<iframe name='blankifr' style='display:none;'></iframe>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function cancel() {
        window.location.href = "/"
    }
    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("NEW_RECEIVER_ADDR1").value = extraAddr;

                } else {
                    document.getElementById("NEW_RECEIVER_ADDR1").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('NEW_RECEIVER_ZIP_CD').value = data.zonecode;
                document.getElementById("NEW_RECEIVER_ADDR1").value += addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("NEW_RECEIVER_ADDR2").focus();
            }
        }).open();
    }

    function dvOrder() {
        const price = "${price}"
        let inputList = []
        const input = document.getElementsByClassName("input_text");
        for (let i = 0; i < input.length; i++) {
            let a = input[i];
            if (a.value === "") {
                alert(a.title + "을 입력해주세요");
                a.focus();
                return false; // 함수 종료
            }
            inputList.push(a.name + ":" + a.value);
        }
        const dvItemList = document.getElementsByClassName("single")
        let itemList = [];
        Array.from(dvItemList).forEach(i => {
            let dvitemList = i.querySelectorAll("input[type='hidden']")
            let index = 0;
            let list2 = [];
            Array.from(dvitemList).forEach(il => {
                if (index === 2) {
                    index = 0;
                    itemList.push(list2);
                    list2 = [];
                }
                index++;
                list2.push(il.id);
            })
            if (list2.length > 0) {
                itemList.push([...list2]);
            }
        })
        console.log("price", price)
        console.log("inputList", inputList)
        console.log("itemList", itemList)
        // 폼 요소 선택

        let form = document.getElementById("inputOrderForm");

        // 기존에 추가된 모든 자식 요소 제거
        while (form.firstChild) {
            form.removeChild(form.firstChild);
        }

        // price 추가
        let priceInput = document.createElement("input");
        priceInput.type = "hidden";
        priceInput.name = "price";
        priceInput.value = price;
        form.appendChild(priceInput);

        // inputList 추가
        inputList.forEach((item, index) => {
            let arr = item.split(":")
            let inputElement = document.createElement("input");
            inputElement.type = "hidden";
            inputElement.name = `inputList[0].\${arr[0]}`;
            inputElement.value = arr[1];
            form.appendChild(inputElement);
        });

        // itemList 추가
        itemList.forEach((item, index) => {
            console.log(item)
            let arr = [];
            item.forEach(a => {
                arr = a.split("_")
                let itemElement = document.createElement("input");
                itemElement.type = "hidden";
                itemElement.name = `itemList[\${index}].\${arr[0]}`;
                itemElement.value = arr[1];
                form.appendChild(itemElement);
            })

        });
        const inputData = form.querySelectorAll("input[type='hidden']");
        inputData.forEach(input => {
            console.log("inputData", input.name, input.value);
        });
        const item = document.querySelectorAll('.boxInner__txt')
        console.log("dk..",item)
        let value = price.replace(",", "");
        let itemName = item[0].innerHTML.replace("옵션 :","")
        let dataItemCount = item.length/2
        console.log(itemName,dataItemCount)
        // 아래 데이터 외에도 필요한 데이터를 원하는 대로 담고, Controller에서 @RequestBody로 받으면 됨
        /*  let data = {
            name: itemName+" 외 "+dataItemCount+"개",    // 카카오페이에 보낼 대표 상품명
            totalPrice: value // 총 결제금액
        };*/
        /* let check = false;*/
        let formData = new FormData(document.getElementById("inputOrderForm"));  //{id:"aaa",pw:100,key:[1111,2222]}
        dataItemCount = dataItemCount-1;
        if (dataItemCount = 0) {
            formData.append("name",itemName);
        } else {
            formData.append("name",itemName+" 외 "+(dataItemCount)+"개");
        }
     /*   let data = {
            name: itemName + " 외 " + dataItemCount + "개",    // 카카오페이에 보낼 대표 상품명
            totalPrice: price, // 총 결제금액
            inputList: inputList,
            itemList: itemList
        };*/

        console.log("formData",formData.get('name'));
        $.ajax({
            type: 'POST',
            url: '/order/pay/ready',
            // data: JSON.stringify(formData),
            data: formData,
            processData:false, //urlencoded(쿼리스트링 형식)처리 금지
            contentType:false, //multipart의 경우 false
            /*contentType: 'application/json',*/
            success: function (response) {
                location.href = response.next_redirect_pc_url;
            }
        });
    }
</script>
</body>
</html>
