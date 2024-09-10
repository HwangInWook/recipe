<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 17.
  Time: 오전 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
<%--    <script defer src="/common/js/common.js"></script>--%>
    <script defer src="/common/js/jquery-3.7.1.min.js"></script>
    <style>
        .zz {
            margin: 0 300px;
        }

        .regi_title {
            background: #f8f8f8;
            border-bottom: 1px solid #e6e7e8;
            padding: 14px 18px;
            font-size: 20px;
            font-weight: bold;
            position: relative;
        }

        .pad_1 {
            padding-left: 60px !important;
        }

        .contents_box {
            padding: 26px 30px;
            border-bottom: 10px solid #f1f1f2;
            margin: 0 -1px;
        }

        .contents_line {
            width: 800px;
            padding: 8px 0 0 0;
        }

        .contents_box .contents_title1 {
            width: 140px;
            display: inline-block;
            font-size: 20px;
            font-weight: normal;
            vertical-align: top;
        }

        .contents_line input {
            display: inline-block;
        }

        .contents_box input {
            background: #f5f5f5;
            border: 1px solid #e1e1e1;
            font-size: 16px;
            padding-left: 15px;
            height: 50px;
            vertical-align: middle;
            margin-top: -1px;
        }

        .form-control {
            padding: 6px 12px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }

        * {
            box-sizing: border-box;
        }

        .contents_box .guide {
            font-size: 14px;
            display: inline-block;
            line-height: 1.8;
            margin-top: 6px;
            color: #999;
            background: url(//recipe1.ezmember.co.kr/img/icon_tip.png) left 2px no-repeat;
            padding: 0 0 0 20px;
            vertical-align: top;
        }

        .mag_1 {
            margin-bottom: 15px !important;
        }

        .contents_box li {
            margin-bottom: 8px;
        }

        .contents_box ul, .contents_box li {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        li {
            display: list-item;
            text-align: -webkit-match-parent;
            unicode-bidi: isolate;
        }

        .contents_box .contents_title3.st2 {
            width: 250px;
        }

        .contents_box .contents_title3 {
            display: inline-block;
            font-size: 20px;
            text-align: center;
            vertical-align: top;
            margin-left: -16px;
        }

        .contents_box p {
            padding: 0 0 0 2px;
            margin: 0 0 22px 0;
            line-height: 50px;
        }

        .mag_2 {
            margin-right: 15px !important;
        }

        p {
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            unicode-bidi: isolate;
        }

        .contents_box .contents_title1 input {
            background: #fffdd7;
            display: inline-block;
        }

        .contents_box li input {
            display: inline-block;
            margin: 3px;
            vertical-align: middle;
            width: 280px;
        }

        .contents_box ul, .contents_box li {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .contents_box input {
            background: #f5f5f5;
            border: 1px solid #e1e1e1;
            font-size: 16px;
            padding-left: 15px;
            height: 50px;
        }

        .form-control {
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }

        .btn_add .btn {
            border: none;
            background: none;
            margin: 10px 0 0 0;
            padding: 0;
            font-size: 16px;
            color: #444;
        }

        .btn-default {
            color: #333;
            background-color: #fff;
            border: 1px solid #ccc;
        }

        .btn_add .btn span {
            color: #74b243;
            font-size: 16px;
            margin-right: 4px;
        }

        .regi_btm {
            border: 1px solid #e6e7e8;
            background: #fff;
            text-align: center;
            padding: 35px 0 40px 0;
            border-top: none;
        }

        .regi_btm .btn-lg {
            padding: 12px 50px;
        }

        .btn-primary {
            color: #fff;
            background-color: #46ae4f;
            border: 1px solid #497725;
        }

        .contents_box .cont_tit3 {
            font-size: 20px;
            font-weight: normal;
            margin: 0;
            width: 100%;
        }

        .contents_box .btn-del {
            background: url(//recipe1.ezmember.co.kr/img/btn_del2.gif) center no-repeat;
            width: 30px;
            height: 30px;
            vertical-align: middle;
        }

        a {
            color: #333;
            text-decoration: none;
        }
    </style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<div class="zz">
    <div class="regi_title">
        물물교환 글 수정
    </div>
    <form name="tradeWritefrm" action="/trade/update" method="post" onsubmit="return update()">
        <input name="t_num" type="hidden" value="${t_num}">
        <div class="contents_box pad_1">
            <div class="contents_line">
                <p class="contents_title1"><b>물물교환 제목</b></p>
                <input type="text" name="t_title" id="trade_title" class="form-control"
                       value="${t_title}" style="width: 610px;">
            </div>
        </div>
        <div class="contents_box pad_1">
            <p class="cont_tit3"><b>재료 정보</b></p>
            <span class="guide mag_1" style="width: 100%;">
        재료의 정확한 정보를 적어주세요(재료 1개이상 필수).
    </span>
            <div class="mag_2 ui-sortbale" id="divMaterialGroupArea">
                <div id="liMaterialGroup_1">
                    <p class="contents_title3 st2 mag_2">
                        <input type="text" name="material_group_title_1" id="material_group_title_1" value="재료"
                               class="form-control" style="font-weight:bold;font-size:18px;width:210px;" disabled/>
                    </p>
                    <ul id="divMaterialArea_1" class="ui-sortable">
                        <c:forEach items="${tUList}" var="trades" varStatus="loop">
                            <li id="liMaterial_1_${loop.index+1}" class="liMaterial_1_1">
                                <input type="text" name="t_item" id="trade_no1_1" class="form-control"
                                       value="${trades.t_item}">
                                <input type="text" name="t_itemcount" id="trade_no1_2" class="form-control"
                                       value="${trades.t_itemcount}">
                                <input type="text" name="t_unit" id="trade_no1_3" class="form-control"
                                       value="${trades.t_unit}">
                                <input type="text" name="t_change" id="trade_no1_4" class="form-control"
                                       value="${trades.t_change}">
                                <input type="text" name="t_order" id="trade_no1_5" value="${trades.t_order}" style="display: none" class="order">
                                <button id="btn-del" type="button" class="btn-del"
                                        style="display: none"></button>
                                <br>
                            </li>
                        </c:forEach>
                    </ul>
                    <div class="btn_add" style="padding:0 0 20px 350px; width: 800px;">
                        <button id="addBtn" type="button" class="btn btn-default">
                            <sapn class="glyphicon glyphicon-plus-sign"></sapn>
                            재료추가
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="regi_btm">
            <button id="saveBtn" class="btn-lg btn-primary">수정</button>
            <button type="button" onclick="history.back();" class="btn-lg btn-default">취소</button>
        </div>
    </form>
</div>
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
<script>
    document.addEventListener("DOMContentLoaded", function () {

        let inputCount = 1; // input 태그의 카운트를 저장하는 변수

        document.getElementById("addBtn").addEventListener("click", function () {
            let orders = document.querySelectorAll(".order");
            let count=orders[orders.length-1].value
            console.log("최대 값:", count);
            let newLi = document.createElement("li")
            let newBtn = document.createElement("button")
            inputCount++; // 각 input 태그의 id가 고유하도록 count를 증가
            count++
            newLi.className = "liMaterial_1_1"
            newBtn.type = "button"
            newBtn.className = "btn-del"
            newBtn.style.display = "none"
            for (let i = 1; i <= 5; i++) {
                const newInput = document.createElement("input");
                newInput.type = "text";
                newInput.id = 'trade_no' + inputCount + '_' + i;
                newInput.className = "form-control";
                newInput.style.margin = "4.4px"
                switch (i) {
                    case 1:
                        newInput.placeholder = "예) 돼지고기";
                        newInput.name = "t_item"
                        break;
                    case 2:
                        newInput.placeholder = "예) 10(수량)";
                        newInput.name = "t_itemcount"
                        break;
                    case 3:
                        newInput.placeholder = "예) g,ml(단위)";
                        newInput.name = "t_unit"
                        break;
                    case 4:
                        newInput.placeholder = "예) 바꾸고 싶은 재료";
                        newInput.name = "t_change"
                        break;
                    case 5:
                        newInput.value=''+count
                        newInput.name="t_order"
                        newInput.className="order"
                        newInput.style.display="none"
                        break;
                }
                newLi.appendChild(newInput)
            }
            newLi.appendChild(newBtn)
            document.getElementById("divMaterialArea_1").appendChild(newLi);

            newLi.addEventListener("mouseover", function () {
                newBtn.style.display = "inline-block"
            })
            newLi.addEventListener("mouseout", function () {
                newBtn.style.display = "none"
            })

            newBtn.addEventListener('click', function (event) {
                event.preventDefault();
                this.parentElement.remove();
            });
        })
    })
    let li=document.getElementsByClassName("liMaterial_1_1")
    for(let i=0;i<li.length;i++) {
        let lis=li[i]
        let delBtn =lis.querySelector(".btn-del")
        lis.addEventListener("mouseover", function () {
            delBtn.style.display = "inline-block"
        })
        lis.addEventListener("mouseout", function () {
            delBtn.style.display = "none"
        })
        delBtn.addEventListener("click",function (){
            let order=lis.querySelectorAll("input")
            order[0].name=""
            order[1].name=""
            order[2].name=""
            order[3].name=""
            order[4].name="order"
            lis.style.display="none"
            // lis.remove()
        })
    }

    const frm = document.tradeWritefrm
    const inputs = frm.querySelectorAll("input")
    const length = frm.length

    function update() {
        for (let i = 0; i < length; i++) {
            console.log(inputs[i].value)
            if (inputs[i].value === "" || inputs[i].value === null) {
                alert("정보를 입력하세요")
                return false;
            }
        }
        return true;
    }
</script>
</body>
</html>
