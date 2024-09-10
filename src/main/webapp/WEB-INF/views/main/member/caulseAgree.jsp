<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 5.
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>이용약관</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .checkbox-container {
            margin-top: 20px;
        }

        .checkbox-label {
            display: block;
            margin-bottom: 20px;
        }

        .terms-box {
            border: 1px solid #ced4da;
            padding: 15px;
            margin-top: 10px;
            border-radius: 5px;
            background-color: #f1f3f5;
            max-height: 200px;
            overflow-y: auto;
        }

        .terms-box h3 {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .terms-box p {
            margin-bottom: 10px;
            font-size: 14px;
            line-height: 1.6;
        }

        .terms-box::-webkit-scrollbar {
            width: 8px;
        }

        .terms-box::-webkit-scrollbar-thumb {
            background-color: #888;
            border-radius: 4px;
        }

        .terms-box::-webkit-scrollbar-track {
            background-color: #f1f3f5;
        }
    </style>
</head>
<body>
<header>
    <jsp:include page="../common/header.jsp"></jsp:include>
</header>
<main>

    <div class="container">
        <h1>이용약관 동의</h1>
        <div class="checkbox-container">
            <h3>필수 동의 항목</h3>
            <label class="checkbox-label">
                <input type="checkbox" class="agree-essential">
                [필수] 이용약관
            </label>
            <div class="terms-box">
                <p><h4>여러분을 환영합니다.</h4>
                그리팅 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 그리팅 서비스의 이용과 관련하여 그리팅 서비스를 제공하는 그리팅 주식회사(이하 ‘그리팅’)와 이를 이용하는 그리팅 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 그리팅 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.

                그리팅 서비스를 이용하시거나 그리팅 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
                <br>
                <br>
                <h4>다양한 그리팅 서비스를 즐겨보세요.</h4>
                그리팅 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을 통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.
                여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 그리팅 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, 그리팅 웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.</p>
            </div>
            <br>
            <label class="checkbox-label">
                <input type="checkbox" class="agree-essential">
                [필수] 개인정보 수집 및 이용
            </label>
            <div class="terms-box">
                <p><h4>1. 수집하는 개인정보</h4>
                    이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 그리팅 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 그리팅는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.

                    회원가입 시점에 그리팅가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
                    - 회원 가입 시 필수항목으로 아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호를, 선택항목으로 본인확인 이메일주소를 수집합니다. 실명 인증된 아이디로 가입 시, 암호화된 동일인 식별정보(CI), 중복가입 확인정보(DI), 내외국인 정보를 함께 수집합니다. 만 14세 미만 아동의 경우, 법정대리인의 동의를 받고 있으며, 휴대전화번호 또는 아이핀 인증을 통해 법정대리인의 동의를 확인하고 있습니다. 이 과정에서 법정대리인의 정보(법정대리인의 이름, 중복가입확인정보(DI), 휴대전화번호(아이핀 인증인 경우 아이핀번호))를 추가로 수집합니다.
                    - 비밀번호 없이 회원 가입 시에는 필수항목으로 아이디, 이름, 생년월일, 휴대전화번호를, 선택항목으로 비밀번호를 수집합니다.
                    - 단체 회원가입 시 필수 항목으로 단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를, 선택항목으로 단체 대표자명을 수집합니다.
                    서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
                    - 회원정보 또는 개별 서비스에서 프로필 정보(별명, 프로필 사진)를 설정할 수 있습니다. 회원정보에 별명을 입력하지 않은 경우에는 마스킹 처리된 아이디가 별명으로 자동 입력됩니다.
                    - 그리팅 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.

                    서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.
                    구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하거나 이용자가 입력한 정보를 저장(수집)하거나, 2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다.
                    서비스 이용 과정에서 위치정보가 수집될 수 있으며,
                    그리팅에서 제공하는 위치기반 서비스에 대해서는 '그리팅 위치기반서비스 이용약관'에서 자세하게 규정하고 있습니다.
                    이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.
                    생성정보 수집에 대한 추가 설명
                    - IP(Internet Protocol) 주소란?
                    IP 주소는 인터넷 망 사업자가 인터넷에 접속하는 이용자의 PC 등 기기에 부여하는 온라인 주소정보 입니다. IP 주소가 개인정보에 해당하는지 여부에 대해서는 각국마다 매우 다양한 견해가 있습니다.
                    - 서비스 이용기록이란?
                    그리팅 접속 일시, 이용한 서비스 목록 및 서비스 이용 과정에서 발생하는 정상 또는 비정상 로그 일체,메일 수발신 과정에서 기록되는 이메일주소, 친구 초대하기 또는 선물하기 등에서 입력하는 휴대전화번호, 스마트스토어 판매자와 구매자간 상담내역(그리팅톡톡 및 상품 Q&A 게시글) 등을 의미합니다. 정보주체가 식별되는 일부 서비스 이용기록(행태정보 포함)과 관련한 처리 목적 등에 대해서는 본 개인정보 처리방침에서 규정하고 있는 수집하는 개인정보, 수집한 개인정보의 이용, 개인정보의 파기 등에서 설명하고 있습니다. 이는 서비스 제공을 위해 수반되는 것으로 이를 거부하시는 경우 서비스 이용에 제한이 있을 수 있으며, 관련하여서는 고객센터로 문의해주시길 바랍니다. 이 외에 정보주체를 식별하지 않고 행태정보를 처리하는 경우와 관련하여서는 '그리팅 맞춤형 광고 안내'에서 확인하실 수 있습니다.
                    - 기기정보란?
                    본 개인정보처리방침에 기재된 기기정보는 생산 및 판매 과정에서 기기에 부여된 정보뿐 아니라, 기기의 구동을 위해 사용되는 S/W를 통해 확인 가능한 정보를 모두 일컫습니다. OS(Windows, MAC OS 등) 설치 과정에서 이용자가 PC에 부여하는 컴퓨터의 이름, PC에 장착된 주변기기의 일련번호, 스마트폰의 통신에 필요한 고유한 식별값(IMEI, IMSI), AAID 혹은 IDFA, 설정언어 및 설정 표준시, USIM의 통신사 코드 등을 의미합니다. 단, 그리팅는 IMEI와 같은 기기의 고유한 식별값을 수집할 필요가 있는 경우, 이를 수집하기 전에 그리팅도 원래의 값을 알아볼 수 없는 방식으로 암호화 하여 식별성(Identifiability)을 제거한 후에 수집합니다.
                    - 쿠키(cookie)란?
                    쿠키는 이용자가 웹사이트를 접속할 때에 해당 웹사이트에서 이용자의 웹브라우저를 통해 이용자의 PC에 저장하는 매우 작은 크기의 텍스트 파일입니다. 이후 이용자가 다시 웹사이트를 방문할 경우 웹사이트 서버는 이용자 PC에 저장된 쿠키의 내용을 읽어 이용자가 설정한 서비스 이용 환경을 유지하여 편리한 인터넷 서비스 이용을 가능케 합니다. 또한 방문한 서비스 정보, 서비스 접속 시간 및 빈도, 서비스 이용 과정에서 생성된 또는 제공(입력)한 정보 등을 분석하여 이용자의 취향과 관심에 특화된 서비스(광고 포함)를 제공할 수 있습니다. 이용자는 쿠키에 대한 선택권을 가지고 있으며, 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 그리팅 일부 서비스의 이용에 불편이 있을 수 있습니다.
                    <br>
                    <br>
                <h4>2. 수집한 개인정보의 이용</h4>
                    그리팅 및 그리팅 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.

                    - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
                    - 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다. 신규 서비스 요소의 발굴 및 기존 서비스 개선 등에는 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 생성·제공·추천, 상품 쇼핑 등에서의 인공지능(AI) 기술 적용이 포함됩니다.
                    - 법령 및 그리팅 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
                    - 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
                    - 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
                    - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
                    - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
            </div>
            <br>
            <label class="checkbox-label">
                <input type="checkbox" class="agree-essential">
                [필수] 실명 인증된 아이디로 가입
                <div class="terms-box">
                    <p style="font-size: 17px">실명 인증된 아이디로 가입하시면 본인증이 필요한 서비스를 가입 후 바로 이용하실 수 있어요.</p>
                </div>
            </label>
            <label class="checkbox-label">
                <input type="checkbox" class="agree-essential">
                [필수] 위치기반서비스 이용약관
                <div class="terms-box">
                    위치기반서비스 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 그리팅 위치기반 서비스를 이용할 수 있습니다.
                    <br>
                    <br>
                    <h4>제 1 조 (목적)</h4>
                    이 약관은 그리팅 주식회사 (이하 “회사”)가 제공하는 위치기반서비스와 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
                    <br>
                    <br>
                    <h4>제 2 조 (약관 외 준칙)</h4>
                    이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.
                    <br>
                    <br>
                    <h4>제 3 조 (서비스 내용 및 요금)</h4>
                    ① 회사는 위치정보사업자로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.
                    1. GeoTagging 서비스: 게시물 또는 이용자가 저장하는 콘텐츠에 포함된 개인위치정보주체 또는 이동성 있는 기기의 위치정보가 게시물과 함께 저장됩니다. 저장된 위치정보는 별도의 활용없이 보관되거나, 또는 장소를 기반으로 콘텐츠를 분류하거나 검색할 수 있는 기능이 제공될 수도 있습니다.
                    2. 위치정보를 활용한 검색결과 및 콘텐츠 제공 : 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과, 주변결과(맛집, 주변업체, 교통수단 등), 번역결과를 제시합니다.
                    3. 이용자 위치를 활용한 광고정보 제공: 검색결과 또는 기타 서비스 이용 과정에서 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 광고소재를 제시합니다.
                    4. 이용자 보호 및 부정 이용 방지: 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한없는 자의 비정상적인 서비스 이용 시도 등을 차단합니다.
                    5. 길 안내 등 생활편의 서비스 제공: 교통정보와 길 안내 등 최적의 경로를 지도로 제공하며, 주변 시설물 찾기, 뉴스/날씨 등 생활정보, 긴급구조 서비스, 주소 자동 입력 등 다양한 운전 및 생활 편의 서비스를 제공합니다.
                    ② 제1항 위치기반서비스의 이용요금은 무료입니다.
                    <br>
                    <br>
                    <h4>제 4 조 (개인위치정보주체의 권리)</h4>
                    ① 개인위치정보주체는 개인위치정보 수집 범위 및 이용약관의 내용 중 일부 또는 개인위치정보의 이용ㆍ제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보할 수 있습니다.
                    ② 개인위치정보주체는 개인위치정보의 수집ㆍ이용ㆍ제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다.
                    ③ 개인위치정보주체는 언제든지 개인위치정보의 수집ㆍ이용ㆍ제공의 일시적인 중지를 요구할 수 있습니다. 이 경우 회사는 요구를 거절하지 아니하며, 이를 위한 기술적 수단을 갖추고 있습니다
                    ④ 개인위치정보주체는 회사에 대하여 아래 자료의 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 이유 없이 요구를 거절하지 아니합니다.
                    1. 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료
                    2. 개인위치정보주체의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법령의 규정에 의하여 제3자에게 제공된 이유 및 내용
                    ⑤ 회사는 개인위치정보주체가 동의의 전부 또는 일부를 철회한 경우에는 지체 없이 수집된 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료를 파기합니다.단, 동의의 일부를 철회하는 경우에는 철회하는 부분의 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료에 한합니다.
                    ⑥ 개인위치정보주체는 제1항 내지 제4항의 권리행사를 위하여 이 약관 제13조의 연락처를 이용하여 회사에 요구할 수 있습니다.
                    <br>
                    <br>
                    <h4>제 5 조 (법정대리인의 권리)</h4>
                    ① 회사는 만 14세 미만 아동으로부터 개인위치정보를 수집ㆍ이용 또는 제공하고자 하는 경우에는 만 14세 미만 아동과 그 법정대리인의 동의를 받아야 합니다.
                    ② 법정대리인은 만 14세 미만 아동의 개인위치정보를 수집ㆍ이용ㆍ제공에 동의하는 경우 동의유보권, 동의철회권 및 일시중지권, 열람ㆍ고지요구권을 행사할 수 있습니다.
                    <br>
                    <br>
                    <h4>제 6 조 (위치정보 이용·제공사실 확인자료 보유근거 및 보유기간)</h4>
                    회사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 개인위치정보주체에 대한 위치정보 수집·이용·제공사실 확인자료를 위치정보시스템에 자동으로 기록하며, 6개월 이상 보관합니다.
                    <br>
                    <br>
                    <h4>제 7 조 (서비스의 변경 및 중지)</h4>
                    ① 회사는 위치기반서비스사업자의 정책변경 등과 같이 회사의 제반 사정 또는 법률상의 장애 등으로 서비스를 유지할 수 없는 경우, 서비스의 전부 또는 일부를 제한, 변경하거나 중지할 수 있습니다.
                    ② 제1항에 의한 서비스 중단의 경우에는 회사는 사전에 인터넷 등에 공지하거나 개인위치정보주체에게 통지합니다.
                    <br>
                    <br>
                    <h4>제 8 조 (개인위치정보 제3자 제공 시 즉시 통보)</h4>
                    ① 회사는 개인위치정보주체의 동의 없이 당해 개인위치정보주체의 개인위치정보를 제3자에게 제공하지 아니하며, 제3자 제공 서비스를 제공하는 경우에는 제공받는 자 및 제공목적을 사전에 개인위치정보주체에게 고지하고 동의를 받습니다.
                    ② 회사는 개인위치정보를 개인위치정보주체가 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신단말장치로 매회 개인위치정보주체에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다.
                    ③ 다만, 아래에 해당하는 경우에는 개인위치정보주체가 미리 특정하여 지정한 통신단말장치 또는 전자우편주소 등으로 통보합니다.

                    1.개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우
                    2.개인위치정보주체가 개인위치정보를 수집한 당해 통신단말장치 외의 통신단말장치 또는 전자우편주소 등으로 통보할 것을 미리 요청한 경우
                </div>
            </label>

            <h3>선택 동의 항목</h3>
            <label class="checkbox-label">
                <input type="checkbox" class="agree-optional">
                [선택] 개인정보 수집 및 이용
            </label>
            <div class="terms-box">
                <p style="font-size: 17px">
                    그리팅 및 제휴 서비스의 이벤트・혜택 등의 정보 발송을 위해 그리팅 아이디(아이디 식별값 포함), 휴대전화번호(그리팅 앱 알림 또는 문자), 이메일주소를 수집합니다.

                    그리팅 아이디(아이디 식별값 포함), 휴대전화번호 및 이메일주소는 그리팅 서비스 제공을 위한 필수 수집항목으로서 그리팅 회원 가입 기간 동안 보관하나, 이벤트 혜택 정보 수신 동의를 철회하시면 본 목적으로의 개인정보 처리는 중지됩니다.
                    정보주체는 개인정보 수집 및 이용 동의를 거부하실 수 있으며, 미동의 시에도 서비스 이용은 가능합니다.

                    ※ 일부 서비스(별개의 회원체계 운영, 그리팅 가입 후 추가 가입하는 서비스 등)의 경우, 수신에 대해 별도로 안내 드리며, 동의를 구합니다.
                </p>
            </div>
        </div>

        <div id="agree-all">
            <label>
                <input type="checkbox" id="agree-all-checkbox">
                모든 항목에 동의합니다. (필수 및 선택 동의)
            </label>
        </div>

        <div class="btn-container" style="display: flex; flex-direction: row; width: 250px; margin-top: 50px; margin-left: 400px">
            <button onclick="checkAgreement()" class="btn" style="border-color: black">다음 페이지로 이동</button>
            <button onclick="home()" class="btn" style="border-color: black">홈으로</button>
        </div>
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
<script>
    function checkAgreement() {
        var agreeEssentialCheckboxes = document.querySelectorAll('.agree-essential');
        var agreeOptionalCheckbox = document.querySelector('.agree-optional');
        var agreeAllCheckbox = document.getElementById('agree-all-checkbox');

        var allEssentialChecked = true;

        // 필수 동의 항목 중 하나라도 체크되지 않은 경우
        for (var i = 0; i < agreeEssentialCheckboxes.length; i++) {
            if (!agreeEssentialCheckboxes[i].checked) {
                allEssentialChecked = false;
                break;
            }
        }

        // 필수 동의 항목 중 하나라도 체크되지 않았을 때
        if (!allEssentialChecked) {
            alert('필수 동의 항목에 모두 동의해야 다음 페이지로 이동할 수 있습니다.');
            return;
        }

        // 모든 동의 항목에 동의한 경우
        if (agreeAllCheckbox.checked || allEssentialChecked) {
            alert('모든 항목에 동의하셨습니다.');
            // 여기에 실제 다음 페이지로 이동하는 코드를 추가할 수 있습니다.
            location.href="/member/join"
        } else {
            alert('모든 항목에 동의해야 다음 페이지로 이동할 수 있습니다.');
        }
    }
    // 전체 동의 체크박스 클릭 시 필수 및 선택 동의 체크박스 모두 선택/해제
    document.getElementById('agree-all-checkbox').addEventListener('click', function() {
        var checked = this.checked;
        var agreeEssentialCheckboxes = document.querySelectorAll('.agree-essential');
        var agreeOptionalCheckbox = document.querySelector('.agree-optional');

        // 필수 동의 항목 체크박스 모두 선택/해제
        for (var i = 0; i < agreeEssentialCheckboxes.length; i++) {
            agreeEssentialCheckboxes[i].checked = checked;
        }

        // 선택 동의 항목 체크박스 선택/해제
        if (agreeOptionalCheckbox) {
            agreeOptionalCheckbox.checked = checked;
        }
    });

    // 필수 동의 및 선택 동의 체크박스를 클릭할 때 전체 동의 체크박스 상태 변경
    var agreeEssentialCheckboxes = document.querySelectorAll('.agree-essential');
    var agreeOptionalCheckbox = document.querySelector('.agree-optional');
    var agreeAllCheckbox = document.getElementById('agree-all-checkbox');

    for (var i = 0; i < agreeEssentialCheckboxes.length; i++) {
        agreeEssentialCheckboxes[i].addEventListener('click', updateAgreeAllCheckbox);
    }

    if (agreeOptionalCheckbox) {
        agreeOptionalCheckbox.addEventListener('click', updateAgreeAllCheckbox);
    }

    function updateAgreeAllCheckbox() {
        var allChecked = true;

        // 필수 동의 체크 여부 확인
        for (var i = 0; i < agreeEssentialCheckboxes.length; i++) {
            if (!agreeEssentialCheckboxes[i].checked) {
                allChecked = false;
                break;
            }
        }

        // 선택 동의 체크 여부 확인
        if (!agreeOptionalCheckbox.checked) {
            allChecked = false;
        }

        // 전체 동의 체크박스 상태 변경
        agreeAllCheckbox.checked = allChecked;
    }
    function home(){
        location.href="/"
    }
</script>
</body>
</html>