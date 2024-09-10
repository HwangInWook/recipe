<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 7. 11.
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
           prefix="sec" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1.5.1/dist/sockjs.min.js"></script>
    <script src="../common/js/jquery-3.7.1.min.js"></script>
    <style>

        :root {
            --clr-two: rgb(127, 255, 0);
            --clr-bg: #1d1e22;
        }

        *,
        *::before,
        *::after {
            box-sizing: border-box;
            margin: 0;
        }

        /*body {*/
        /*    min-height: 100vh;*/
        /*    display: flex;*/
        /*    justify-content: center;*/
        /*    align-items: center;*/
        /*    flex-direction: column;*/
        /*    background: var(--clr-bg);*/
        /*    font-family: "Balsamiq Sans", cursive;*/
        /*    overflow: hidden;*/
        /*}*/

        /*h1 {*/
        /*    color: white;*/
        /*}*/

        /*p {*/
        /*    margin-top: 1em;*/
        /*    color: white;*/
        /*}*/

        .container {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            flex-direction: column;
            flex-wrap: wrap;
        }

        .buttons {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        .neon-button {
            font-size: 1rem;

            display: inline-block;
            cursor: pointer;
            text-decoration: none;
            padding: 0.5em 1em;
            margin: 2rem;
            border-radius: 0.25em;
            position: relative;
        }


        .neon-button__2 {
            color: var(--clr-two);
            border: var(--clr-two) 0.125em solid;
            text-shadow: 0 0 0.125em hsl(0 0% 100% / 0.3), 0 0 0.45em --clr-two;
            box-shadow: inset 0 0 0.5em 0 var(--clr-two), 0 0 0.5em 0 var(--clr-two);
        }

        .neon-button::before {
            content: "";
            position: absolute;
            top: 120%;
            left: 0;
            width: 100%;
            height: 100%;
            transform: perspective(1.5em) rotateX(45deg) scale(0.8, 0.3);
            filter: blur(1.5em);
            opacity: 0.7;
            pointer-events: none;
        }

        .neon-button.active::before {
            animation: scalingShadow 0.5s ease-in-out;
        }

        @keyframes scalingShadow {
            0% {
                top: 120%;
                transform: perspective(1.5em) rotateX(45deg) scale(0.8, 0.3);
            }
            50% {
                top: 165%;
                transform: perspective(1.5em) rotateX(45deg) scale(0.75, 0.3);
            }
            100% {
                top: 120%;
                transform: perspective(1.5em) rotateX(45deg) scale(0.8, 0.3);
            }
        }


        .neon-button__2::before {
            background: var(--clr-two);
        }


        .neon-button::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            opacity: 0;
            z-index: -1;
            transition: opacity 100ms linear;
        }

        }

        .neon-button__2::after {
            box-shadow: 0 0 2em 0.5em var(--clr-two);
            background-color: var(--clr-two);
        }


        .neon-button:hover::before,
        .neon-button:focus::before {
            opacity: 1;
        }

        .neon-button:hover::after,
        .neon-button:focus::after {
            opacity: 1;
        }

        .neon-button:hover,
        .neon-button:focus {
            outline: none;
            color: var(--clr-bg);
            text-shadow: none;
        }

        .active {
            animation: animate 0.5s ease-in-out;
        }

        @keyframes animate {
            0% {
                transform: translateY(0%);
            }
            50% {
                transform: translateY(-40%);
            }
            100% {
                transform: translateY(0%);
            }
        }

    </style>
    <script>
        const links = document.querySelectorAll("a");

        links.forEach(link => {
            link.addEventListener("click", event => {
                event.preventDefault();
                event.target.classList.add("active");
                setTimeout(() => {
                    event.target.classList.remove("active");
                }, 500);
            });
        });
    </script>
</head>
<body>

<header>
    <jsp:include page="../common/header.jsp"></jsp:include>
</header>
<h1 style="font-size: large; margin-top: 10px; margin-left: 400px">HOME > 물물교환 > 교환</h1>
<main style="margin-left: 400px; width: 1100px; border: 3px solid #f9f9f9">
    <input name="t_num" value="${t_num}" style="display: none">
    <div style="justify-content: space-between; display: flex; flex-direction: row">
        <h1> </h1>
        <h1>교환해용★</h1>
        <sec:authorize access="hasRole('ADMIN')">
            <button id="deleteBtn" onclick="delete_board('${t_num}')">삭제</button>
        </sec:authorize>
    </div>
    <div style="margin-left: 30px; margin-top: 100px;">
        <c:forEach var="trades" items="${tDList}">
            <div style="display: flex; flex-direction: row; justify-content: space-between">
            <h4 style="margin-top: 15px">${m_name}님의 상품 : ${trades.t_item} <input class="itemcountVal" style="width: 50px; text-align: center" placeholder="${trades.t_itemcount}" type="number" max="${trades.t_itemcount}" min="1"> ${trades.t_unit}</h4>
            <h4>교환을 원하는 품목 : <input class="t_change" value="${trades.t_change}" style="width: 100px;text-align: center"> <input class="change_count" type="text" style="width: 50px; text-align: center" placeholder="수량">
                <select class="change_unit">
                    <option value="kg">kg</option>
                    <option value="g">g</option>
                </select> </h4>
            </div>
        </c:forEach>
    </div>
    <div style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 100px">
<%--        <div>--%>
<%--            <a class="twitter" href="#">--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" width="72" height="72" viewBox="0 0 72 72">--%>
<%--                    <path d="M67.812 16.141a26.246 26.246 0 0 1-7.519 2.06 13.134 13.134 0 0 0 5.756-7.244 26.127 26.127 0 0 1-8.313 3.176A13.075 13.075 0 0 0 48.182 10c-7.229 0-13.092 5.861-13.092 13.093 0 1.026.118 2.021.338 2.981-10.885-.548-20.528-5.757-26.987-13.679a13.048 13.048 0 0 0-1.771 6.581c0 4.542 2.312 8.551 5.824 10.898a13.048 13.048 0 0 1-5.93-1.638c-.002.055-.002.11-.002.162 0 6.345 4.513 11.638 10.504 12.84a13.177 13.177 0 0 1-3.449.457c-.846 0-1.667-.078-2.465-.231 1.667 5.2 6.499 8.986 12.23 9.09a26.276 26.276 0 0 1-16.26 5.606A26.21 26.21 0 0 1 4 55.976a37.036 37.036 0 0 0 20.067 5.882c24.083 0 37.251-19.949 37.251-37.249 0-.566-.014-1.134-.039-1.694a26.597 26.597 0 0 0 6.533-6.774z"></path>--%>
<%--                </svg>--%>
<%--            </a>--%>
<%--        </div>--%>
        <sec:authorize access="isAuthenticated()">
<%--            추천--%>
            <div class="container">
                <div class="buttons">
                    <a href="#" id="recommend" class="neon-button neon-button__2">추천</a>
                </div>
            </div>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <div style="">
                <button id="exchange" class="btn btn-outline-success">교환</button>
            </div>
        </sec:authorize>

    </div>
    <c:if test="${m_id==sessionScope.login}">
        <button id="updateBtn" onclick="update_board('${t_num}')">수정</button>
        <button id="deleteBtn" onclick="delete_board('${t_num}')">삭제</button>
    </c:if>


</main>
<script>
    let itemCnt = document.querySelectorAll("#t_itemcount")
    const isNotNumber = (value) => !/^\d+$/.test(value);
    for (let elem of itemCnt) {
        elem.addEventListener("input", function () {
            const maxVal = elem.getAttribute('max');
            if (isNotNumber(elem.value)) {
                elem.value = maxVal ? maxVal : '';
                alert("숫자만 입력해주세요")
            } else if (elem.value > maxVal) {
                elem.value = maxVal ? maxVal : '';
                alert("남은 수량을 확인하세요")
            }
        })
    }

    document.getElementById("exchange").addEventListener('click', function () {
        let tradesend = `${sessionScope.login}`
        let m_id = `${m_id}`;
        let t_num =${t_num};
        let title = `${t_title}`;
        const regex = /t_item=([^,]+),\s*t_itemcount=([^,]+),\s*t_unit=([^,]+),\s*t_change=([^,]+)/g;
        const items = [];
        const itemcount1=[];
        const itemcounts=document.querySelectorAll(".itemcountVal")
        itemcounts.forEach(el=>{
            itemcount1.push(el.value)
        })
        const units=[];
        const changes = document.querySelectorAll(".t_change");
        const changeCounts = document.querySelectorAll(".change_count");
        const changeUnits = document.querySelectorAll(".change_unit");
        let t_change=[];
        changes.forEach((elem,index)=>{
            t_change.push(elem.value+changeCounts[index].value+changeUnits[index].value)
        })

        let match;
        while ((match = regex.exec(`${tDList}`)) !== null) {
            items.push(match[1].trim()); // match[1]은 t_item의 값을 포함
            // itemcounts.push(match[2].trim());
            units.push(match[3].trim());
        }
        let length = items.length
        $.ajax({
            url: "/trade/messageSend",
            type: "post",
            success: function (resp) {
                alert("교환신청이 완료되었습니다.")
                for (let i = 0; i < length; i++) {
                    let item = items[i]
                    let itemcount = itemcount1[i]
                    console.log(itemcount)
                    let unit = units[i]
                    let change = t_change[i]
                    if (socket) {
                        let socketMsg = {
                            "tradesend": tradesend,
                            "m_id": m_id,
                            "t_num": t_num,
                            "t_title:": title,
                            "t_item": item,
                            "t_itemcount": itemcount,
                            "t_unit": unit,
                            "t_change": change,
                            "type": "SEND"
                        };
                        socket.send(JSON.stringify(socketMsg))
                    }
                }
            },
            error: function () {
                alert("교환 신청이 실패하였습니다")
            }
        })
    })

</script>
<script>
    function update_board(t_num) {
        location.href = "/trade/updatefrm?t_num=" + t_num
    }

    function delete_board(t_num) {
        let conf = confirm("정말 삭제하겠습니까?")
        if (conf === true) {
            location.href = "/trade/delete?t_num=" + t_num
        }
    }

    $(document).ready(function () {
        document.getElementById("recommend").addEventListener("click", function () {
            $.ajax({
                url: "/trade/recommend",
                type: "post",
                data: {t_num:${t_num}}
            }).done((resp) => {
                console.log(resp)
                if (resp) {
                    alert("추천하였습니다.")
                } else {
                    alert("이미 추천했습니다.")
                }
            }).fail((err) => {
                console.log(err)
            })
        })
    })
</script>
</body>
</html>
