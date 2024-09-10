<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 3.
  Time: 오전 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css?h=cb606d99bb2418df19b6bc818b41e412">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="/assets/css/styles.min.css?h=94c76ca45cf1136042bce4cad72a7b5e">
    <style>
        .Emphasize on {
            color: #4e73df;
        }
    </style>
    <script>
        const msg = '${msg}'
        if (msg !== "") {
            alert(msg)
        }

        function searchModal(name) {
            console.log("모달폼 진입")
            let param = [];
            let close = $('#idSearchFormClose')
            let searchForm = $('#searchIdForm')
            let str = $('#pResult')
            let str2 = $('#spanTimeout')
            let mname = $('#id_m_name')
            let phone = $('#id_m_phone')
            switch (name.name) {
                case "아이디":
                    param.push(name.name)
                    param.push(mname.val())
                    param.push(phone.val())
                    break;
                case "비밀번호":
                    param.push(name)
                    break;
                default:
                    console.log("모달폼 에러")
            }
            $.ajax({
                method: 'get',
                url: "/search/idpw",
                data: {"param": param}
            }).done((resp) => {
                console.log("모달폼 DONE")
                console.log(resp)
                str.html(resp[0].m_name + "님의 아이디는 [ " + resp[0].m_id + " ] 입니다")
                searchForm.css('display', 'none')
                for (let i = 5; i > 0; i--) {
                    setTimeout(function () {
                        str2.html(i + '초 뒤 창이 닫힙니다');
                        if (i === 1) { // 마지막 카운트다운 후 창을 닫고 폼을 표시
                            setTimeout(function () {
                                close.click();
                            }, 1000);
                        }
                    }, (5 - i) * 1000);
                }
                setTimeout(function () {
                    searchForm.css('display', 'block');
                    str.html('')
                    str2.html('')
                    mname.val('')
                    phone.val('')
                }, 6000);
            }).fail((err) => {
                console.log("모달폼 FAIL")
                console.log(err)
            })
        }

        function pwSelect(value) {
            console.log("[비밀번호] 메소드 진입")
            let search = $('#pwSearchForm')
            let change = $('#pwChangeForm')
            let title = $('#pwTitle')
            switch (value.name) {
                case "비밀번호 찾기":
                    search.addClass('on')
                    change.removeClass('on')
                    title.html('비밀번호 찾기')
                    change.css('display', 'none')
                    search.css('display', 'block')
                    break;
                case "비밀번호 변경":
                    change.addClass('on')
                    search.removeClass('on')
                    title.html('비밀번호 변경')
                    search.css('display', 'none')
                    change.css('display', 'block')
                    break;
                default:
                    console.log("[비번] 에러")
            }
        }

        function pwSearchClose() {
            setTimeout(function () {
                let search = $('#pwSearchForm')
                let change = $('#pwChangeForm')
                let title = $('#pwTitle')
                change.css('display', 'none')
                search.css('display', 'none')
                title.html('비밀번호 찾기')
            }, 1000);
        }
        function verifyCode() {
            console.log("[인증] 함수 진입")
            let id = $('#pw_m_id').val()
            let name = $('#pw_m_name').val()
            let phone = $('#pw_m_phone').val()
            const inpCode = document.querySelector(".inpCode")
            $.ajax({
                method:'get',
                url:"/search/pw/verifycode",
                data:{"id":id, "name":name, "phone":phone}
            }).done((resp) => {
                console.log("[인증] DONE")
                console.log(resp)
                inpCode.style.display = "block"
            }).fail((err) => {
                console.log("[인증] FAIL")
                alert("입력하신 회원정보는 없습니다.")
            })

        }
        function copyBtn() {
            let here = document.getElementById("autoGeneratePw")
            here.select()
            here.setSelectionRange(0, 99999);

            navigator.clipboard.writeText(here.value)
            alert('복사되었습니다')
        }
        function generateTempPw(length = 12) {
            const charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+[]{}|;:,.<>?";
            let password = "";
            for (let i = 0; i < length; i++) {
                const randomIndex = Math.floor(Math.random() * charset.length);
                password += charset[randomIndex];
            }
            return password;
        }
        function makeNewPw() {
            let gPw = $('#generatePw')
            let divBtn = $('#makeBtn')
            divBtn.css('display', 'none')
            let str = "";
            str += "<input type='text' id='autoGeneratePw' style='height: 50px; width: 300px;text-align: center'>"
            str += "<button type='button' style='height: 50px; width: 64px' onclick='copyBtn()'>복사</button>"
            gPw.html(str)
            let pwGen = $('#autoGeneratePw')
            let newPw = generateTempPw()
            pwGen.val(newPw);
            console.log(newPw)
            let id = $('#pw_m_id').val()
            let name = $('#pw_m_name').val()
            let phone = $('#pw_m_phone').val()
            $.ajax({
                method:'post',
                url:"/change/new/autogeneratepw",
                data:{"id":id, "name":name, "phone":phone,"pw":newPw}
            }).done((resp) => {
                console.log("[임시비번 업데이트] DONE")
            }).fail((err) => {
                console.log("[임시비번 업데이트] FAIL")
            })



        }
        function checkCode() {
            const authCode=document.getElementById("authCode").value.trim()
            if(authCode===""){
                alert("인증코드를 입력하세요")
            }else{
                $.ajax({
                    type:"post",
                    url:"/checkcode",
                    data:{authCode:authCode}
                }).done((resp)=>{
                    console.log(resp)
                    if(resp===true) {
                        document.getElementById("checkCode").innerHTML = "인증번호가 일치합니다"
                        document.getElementById("checkCodeBtn").disabled = "true"
                        let divBtn = $('#makeBtn')
                        divBtn.html("<button type='button' onclick='makeNewPw()' class='btn' style='background-color: #77b347; color: white'>새 비밀번호 생성</button>")
                        // let divBtn2 = $('#pwChangeForm')
                        // let str2 = "";
                        // str2 += "<button type='button' onclick='changePw()' id='changePwBtn' className='btn' style='background-color: #77b347; color: white'>비밀번호 변경</button>"
                        //     divBtn2.append(str2)
                        $('#changePwBtn').css('display', 'block')
                        // document.getElementById('changePwBtn').display = 'false'
                    } else {
                        document.getElementById("checkCode").innerHTML = "인증번호가 일치하지 않습니다"
                        document.getElementById("serPwBtn").addEventListener('click', function () {
                            $('#searchPW').modal('hide');
                        })
                    }
                }).fail((err)=>{
                    console.log(err)
                })
            }
        }
        function changePw() {
            let currentPw = $('#currentPw').val()
            let changePw1 = $('#changePw1').val()
            let changePw2 = $('#changePw2').val()
            console.log(currentPw)
            console.log(changePw1)
            console.log(changePw2)
            if (changePw1 !== changePw2) {
                alert('변경할 비밀번호가 일치하지 않습니다. 빡대가리신가요?')
                return
            }

            $.ajax({
                method:'post',
                url:"/update/password",
                data:{"currentPw":currentPw, "changePw":changePw2}
            }).done((resp) => {
                console.log("[비번 변경] DONE")
                let closeBtn = $('#pwSearchFormClose')
                closeBtn.click();
                alert('새 비밀번호를 사용하여 로그인 해주십시오.')
            }).fail((err) => {
                console.log("[비번 변경] FAIL")
                alert('파업을 선언한다 휴먼. 얌전히 집에 가도록.')
            })

        }
    </script>
</head>
<body>
<header>
    <jsp:include page="../common/header.jsp"></jsp:include>
</header>
<h1 style="font-size: large; margin-top: 10px; margin-left: 400px">HOME > 로그인</h1><br>
<!-- 아이디 찾기 Modal -->
<div class="modal fade" id="searchId" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">아이디 찾기</h1>
                <button type="button" id="idSearchFormClose" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <hr style="border: 5px solid #77b347">
            <div class="modal-body" id="idSearchModalBody" style="text-align: center;margin-top: 30px">
                <div id="searchIdForm">
                    <form>
                        <input placeholder="  성      명" style="width: 80px; height: 50px" disabled>
                        <input id="id_m_name" name="m_name" type="text" style="height: 50px; width: 250px"><br>
                        <input placeholder="  전화번호" style="width: 80px; height: 50px" disabled>
                        <input id="id_m_phone" name="m_phone" type="text"
                               style="height: 50px; width: 250px; margin-bottom: 30px"><br>
                        <!-- Button trigger modal -->
                        <button id="serIdBtn" name="아이디" type="button" class="btn"
                                style="background-color: #77b347; color: white"
                                onclick="searchModal(this)">
                            아이디 찾기
                        </button>
                    </form>
                </div>
                <div id="searchIdResult">
                    <p id="pResult"></p>
                    <p id="spanTimeout"></p>
                </div>
            </div>
            <hr style="border: 5px solid #77b347">
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<button id="searchIdModal" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#searchId"
        style="display: none">
</button>
<!-- 비밀번호 찾기 Modal -->
<div class="modal fade" id="searchPw" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="pwTitle">비밀번호 찾기</h1>
                <button type="button" id="pwSearchFormClose" class="btn-close" onclick="pwSearchClose()"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <hr style="border: 5px solid #77b347">
            <div class="modal-body" id="pwSearchModalBody" style="text-align: center">
                <div style="text-align: center">
                    <a class="Emphasize" href="javascript:void(0)" name="비밀번호 찾기" onclick="pwSelect(this)">비밀번호 찾기</a> |
                    <a class="Emphasize" href="javascript:void(0)" name="비밀번호 변경" onclick="pwSelect(this)">비밀번호 변경</a>
                </div>
                <div id="pwSearchForm" style="display: block; margin-top: 30px">
                    <form>
                        <input type="text" placeholder="  아 이 디" style="height: 50px; width: 80px" disabled>
                        <input id="pw_m_id" type="text" style="height: 50px; width: 284px"><br>
                        <input type="text" placeholder="  성     명" style="height: 50px; width: 80px" disabled>
                        <input id="pw_m_name" type="text" style="height: 50px; width: 284px"><br>
                        <input type="text" placeholder="  전화번호" style="height: 50px; width: 80px" disabled>
                        <input id="pw_m_phone" type="text" style="height: 50px; width: 200px">
                        <input id="getCode" type="button" value="인증번호" onclick="verifyCode()" style="height: 50px; width: 80px">
                        <div class="inpCode" style="display: none">
                            <input id="authCode" name="authCode" type="text" style="height: 50px; width: 248px"
                                   placeholder="  인증번호 6자리">
                            <input id="checkCodeBtn" type="button" onclick="checkCode()" style="height: 50px; width: 115px"
                                   value="인증번호확인"><br>
                            <span id="checkCode"></span>
                        </div>
                        <br>
                        <br>
                        <div id="makeBtn">
                        </div>
                        <div id="generatePw">
                        </div>
                    </form>
                </div>
                <div id="pwChangeForm" style="display: none; margin-top: 30px">
                    <form>
                        <input id="currentPw" type="password" style="height: 50px; width: 300px" placeholder="  현재 비밀번호"
                               autocomplete="off"><br>
                        <input id="changePw1" type="password" style="height: 50px; width: 300px"
                               placeholder="  변경할 비밀번호" autocomplete="off"><br>
                        <input id="changePw2" type="password" style="height: 50px; width: 300px"
                               placeholder="  변경할 비밀번호 확인" autocomplete="off"><br><br>
                        <span id="check_pw"></span>
                        <button type="button" onClick="changePw()" id="changePwBtn" className="btn"
                                style="background-color: #77b347; color: white; display: none">
                            비밀번호 변경
                        </button>
                    </form>
                </div>
            </div>
            <hr style="border: 5px solid #77b347">
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<button id="searchPwModal" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#searchPw"
        style="display: none">
</button>
<main style="text-align: center; margin: auto; width: 400px">
    <br>
    <br>
    <br>
    <h4 style="font-size: xxx-large">로그인</h4>
    <br>
    <form action="/member/login" method="post">
        <input name="username" type="text" placeholder="  아이디"
               style="margin-top: 70px; margin-bottom: 10px; height: 60px; width: 400px"><br>
        <input name="password" type="password" placeholder="  비밀번호"
               style="margin-bottom: 20px;margin-top: 5px; height: 60px; width: 400px"
               autocomplete="off"><br>
        <div style="display: flex;justify-content: space-between">
            <div class="hd-checkbox">
                <input type="checkbox" id="chk2" class="hidden" data-check="n" data-checked="n"
                       data-gtm-form-interact-field-id="0">
                <label for="chk2">아이디 저장</label>
            </div>
            <button style="display: none; margin-bottom: 30px">css용 ㅇㅇ 건드리지말것</button>
        </div>
        <button type="submit"
                style="width: 400px; height: 50px; margin-top: 20px;justify-content: center; font-size: x-large; background-color: #77b347; color: white">
            로그인
        </button>

    </form>
</main>
<div style="text-align: center; margin-top: 30px">
    <%--    <a href="searchfrm">--%>
    <%--        <button type="submit" class="btn btn-danger">아이디/비밀번호찾기</button>--%>
    <%--    </a>--%>
    <a href="javascript:document.querySelector('#searchIdModal').click()">아이디 찾기</a> |
    <a href="javascript:document.querySelector('#searchPwModal').click()">비밀번호 찾기</a> |
    <a href="/joinfrm">회원가입</a>
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
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
</body>
</html>
