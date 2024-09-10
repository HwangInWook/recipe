<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 3.
  Time: 오전 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<header>
    <jsp:include page="../common/header.jsp"></jsp:include>
</header>
<main>
    <h1 style="font-size: large; margin-top: 10px; margin-left: 400px">HOME > 회원가입</h1><br>
    <section style="margin-top: 50px; margin-left: 550px; width: 40%; text-align: center">
        <form name="joinfrm" action="/join" method="post" onsubmit="return check()">
            <table>
                <tr class="table-group-divider">
                    <th colspan="4" style="font-size: x-large; font-weight: bold; color: black">회원 정보 입력</th>
                </tr>
                <tr>
                    <th style="font-size: larger; color: black">이름</th>
                    <th colspan="4"><input class="name" name="m_name" placeholder="  한글은 10자, 영문은 20자 이내로 입력해 주세요" type="text" title="이름" style="height: 50px; width: 600px">
                        </th>
                </tr>
                <tr>
                    <th></th>
                    <th colspan="4"><span class="checkMSG"></span></th>
                </tr>
                <tr>
                    <th style="font-size: larger; color: black">아이디</th>
                    <th colspan="4"><input id="m_id" class="id" name="m_id" type="text" placeholder="  예) example@naver.com" title="아이디" style="height: 50px; width: 600px"></th>
                </tr>
                <tr>
                    <th></th>
                    <th colspan="4"><span class="checkMSG"></span></th>
                </tr>
                <tr>
                    <th style="font-size: larger; color: black">비밀번호</th>
                    <th colspan="4"><input class="pw" name="m_pw" type="password" placeholder="  영문 대소문자,숫자,특수문자를 조합하여 8자리이상 입력해 주세요" title="비밀번호" style="height: 50px; width: 600px"></th>
                </tr>
                <tr>
                    <th></th>
                    <th colspan="4"><span class="checkMSG"></span></th>
                </tr>
                <tr>
                    <th style="font-size: larger; color: black">비밀번호 확인</th>
                    <th colspan="4"><input class="pwCheck" type="password" placeholder="  비밀번호확인" title="비밀번호확인" style="height: 50px; width: 600px"></th>
                </tr>
                <tr>
                    <th></th>
                    <th colspan="4"><span class="checkMSG"></span></th>
                </tr>
                <tr>
                    <th style="font-size: larger; color: black">주소</th>
                    <th colspan="4"><input class="address" name="m_address" type="text" placeholder="  주소" title="주소" style="height: 50px; width: 600px"></th>
                </tr>
                <tr>
                    <th></th>
                    <th colspan="4"><span class="checkMSG"></span></th>
                </tr>
                <tr>
                    <th style="font-size: larger; color: black">휴대폰번호</th>
                    <th><input class="phone" name="m_phone" type="text" placeholder="  전화번호" title="전화번호" style="height: 50px; width: 600px"></th>
                </tr>
                <tr>
                    <th></th>
                    <th colspan="4"><span class="checkMSG"></span></th>
                </tr>
            </table>
            <input type="submit" id="joinSubmitHiddenBtn" value="회원가입" style="display: none">
        </form>
        <a href="javascript:document.querySelector('#joinSubmitHiddenBtn').click()" style="height: 50px; width: 500px; background-color: #77b347; color: white; font-size: larger; font-weight: bold; border-radius: 5px ">회원가입</a>
        <button onclick="location.href='/'" style="margin-top: 100px">홈페이지로</button>
    </section>

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

    const frm = document.joinfrm;
    const length = frm.length - 1;
    const check1=document.getElementsByClassName("checkMSG")
    const len=check1.length-1
    const nameRange = /^(?:[가-힣]{1,10}|[a-zA-Z\s]{1,20})$/;
    const idRange= /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    const pwRange= /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$/;
    frm.addEventListener("input", function (event) {
        const index = Array.from(frm).indexOf(event.target);

        if (index === 0) { // 이름 입력
            check1[0].innerHTML = nameRange.test(frm[0].value) ? "" : "한글 10자 이내, 영어 20자 이내로 입력해 주세요";
        }else if (index === 1) { // 아이디 입력
            check1[1].innerHTML = idRange.test(frm[1].value) ? "" : "이메일 형식으로 입력해 주세요";
            check1[1].style.color='#858796'
        }else if(index===2) { //비밀번호 입력
            check1[2].innerHTML = pwRange.test(frm[2].value) ? "" : "영문 대소문자,숫자,특수문자를 조합하여 8자리이상 입력해 주세요"
        }else if(index===3){
            check1[3].innerHTML = (frm[2].value===frm[3].value) ? "" : "비밀번호가 일치하지 않습니다"
        }else if(index===4){
            check1[4].innerHTML = (frm[4].value!=="") ? "" : "주소를 입력해 주세요"
        }else if(index===5){
            check1[5].innerHTML = (frm[5].value!=="") ? "" : "전화번호를 입력해 주세요"
        }
    });

    function check() {
        for (let i = 0; i < length; i++) {
            if (frm[i].value === "" || frm[i].value === null) {
                alert(frm[i].title + "입력!!!")
                frm[i].focus()
                return false;
            }
        }
        for (let elem of check1) {
            if(elem.innerHTML!==""){
                alert("똑바로 입력해라")
                return false;
            }
        }
        alert('서버로')
        return true;
    }
    const checkId=document.getElementById("m_id")
    checkId.addEventListener("blur",function (){
        $.ajax({
            method:'post',
            url:'/member/checkId?m_id='+checkId.value,
        }).done((resp)=>{
            console.log(resp)
            if(resp.length>0){
                check1[1].innerHTML ="이미 사용중인 아이디 입니다.";
                check1[1].style.color='red'
            }
        }).fail((err)=>{
            console.log(err)
        })
    })
</script>
</body>
</html>
