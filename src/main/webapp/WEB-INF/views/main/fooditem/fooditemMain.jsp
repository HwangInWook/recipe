<%--
  Created by IntelliJ IDEA.
  User: dnjs1
  Date: 24. 7. 5.
  Time: 오후 7:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Title</title>
    <link rel="stylesheet" href="/assets/bootstrap/css/foodItemMain.css?h=3f30c2c47d7d23c7a994db0c862d45a5">
    <link rel="stylesheet" href="/assets/css/foodItemMain.css?h=f1d8140dea40b1c57559575c00adff25">
    <style>
        .srp-sync #searchSortingOrder .sorting-order-options li:after {
            content: ' ';
            display: block;
            clear: both;
        }

        .srp-sync #searchSortingOrder .sorting-order-options li.selected {
            font-weight: bold;
        }

        #searchSortingOrder .sorting-order-options li.selected {
            color: #0073e9;
        }

        .srp-sync #searchSortingOrder .sorting-order-options li {
            float: left;
            height: 100%;
            padding: 0 10px;
            line-height: 1.5;
            color: #555;
            border-left: 1px solid #eee;
        }


    </style>
<script>
    localStorage.setItem("num","")
</script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<div id="container" class="renewal sdp-wide list srp-sync srp-sync-brand">
    <section id="contents" class="contents list">
        <form id="searchOptionForm" action="https://www.coupang.com/np/categories/" method="get" data-linkcode="393760"
              data-unlimited="false" data-seo-page-tc="true" data-remove-params="false">
            <div class="newcx-container">
                <div class="newcx-body">
                    <div class="newcx-main">
                        <div class="newcx-widget-container">
                            <div class="newcx-top-multi-link-banner" data-web-log-event="expose" data-log-sent="1">
                                <img src="/uploadedImg/main/bannerunit_6611870e-8808-439b-905f-9f04c6ee9a2a.png?h=a6fd6576c3beddb2f65e9dceefc8b8d0" usemap="#image-map">
                            </div>
                            <map name="image-map">
                                <area target="_self" alt="과일" title="과일" href="javascript:imgLink(102)" coords="26,127,187,321" shape="rect">
                                <area target="_self" alt="정육/계란" title="정육/계란" href="javascript:imgLink(103)" coords="213,125,352,324" shape="rect">
                                <area target="_self" alt="밀키트" title="밀키트" href="javascript:imgLink(104)" coords="530,318,379,133" shape="rect">
                                <area target="_self" alt="냉장/냉동/간편식" title="냉장/냉동/간편식" href="javascript:imgLink(105)" coords="558,126,710,322" shape="rect">
                                <area target="_self" alt="델리/셀러드" title="델리/셀러드" href="javascript:imgLink(106)" coords="734,123,883,324" shape="rect">
                                <area target="_self" alt="통조림/즉석밥/면" title="통조림/즉석밥/면" href="javascript:imgLink(107)" coords="903,122,1066,320" shape="rect">
                                <area target="_self" alt="수산/건어물" title="수산/건어물" href="javascript:imgLink(108)" coords="181,528,31,337" shape="rect">
                                <area target="_self" alt="김치/반찬" title="김치/반찬" href="javascript:imgLink(109)" coords="208,335,354,530" shape="rect">
                                <area target="_self" alt="만두" title="만두" href="javascript:imgLink(248)" coords="376,338,534,530" shape="rect">
                                <area target="_self" alt="쌀/잡곡" title="쌀/잡곡" href="javascript:imgLink(110)" coords="552,334,707,524" shape="poly">
                                <area target="_self" alt="베이커리" title="베이커리" href="javascript:imgLink(101)" coords="735,336,882,527" shape="rect">
                                <area target="_self" alt="유아식" title="유아식" href="javascript:imgLink(297)" coords="910,337,1049,520,982,424" shape="rect">
                                <area target="_self" alt="장/양념/소스" title="장/양념/소스" href="javascript:imgLink(112)" coords="34,541,180,736" shape="rect">
                                <area target="_self" alt="간식/떡/빙과" title="간식/떡/빙과" href="javascript:imgLink(113)" coords="202,544,356,738" shape="rect">
                                <area target="_self" alt="커피/음료" title="커피/음료" href="javascript:imgLink(114)" coords="376,542,533,733,465,682" shape="rect">
                                <area target="_self" alt="우유/유제품" title="우유/유제품" href="javascript:imgLink(115)" coords="552,546,704,734" shape="rect">
                                <area target="_self" alt="채소" title="채소" href="javascript:imgLink(116)" coords="726,547,881,736" shape="rect">
                                <area target="_self" alt="건강식품" title="건강식품" href="" coords="906,544,1056,737" shape="rect">
                                <area target="_self" alt="생필품/꽃/반려동물" title="생필품/꽃/반려동물" href="" coords="25,757,188,946,163,872" shape="rect">
                                <area target="_self" alt="선물세트" title="선물세트" href="" coords="203,758,358,951" shape="rect">
                            </map>
                        </div>
                        <div class="newcx-list" data-search-id="1b49d3cefad242bd8585867217cf4c11">
                            <div class="newcx-main-category-header">
                                <div class="search-utilities">
                                    <div class="search-sorting">
                                        <div id="searchSortingOrder">
                                            <ul class="sorting-order-options">
                                                <li class="selected">
                                                    <input type="radio" id="sorter-salePriceAsc" name="sorter"
                                                           value="salePriceAsc" checked="">
                                                    <label for="sorter-salePriceAsc" class="item-name">낮은가격순</label>
                                                </li>
                                                <li class="">
                                                    <input type="radio" id="sorter-salePriceDesc" name="sorter"
                                                           value="salePriceDesc">
                                                    <label for="sorter-salePriceDesc" class="item-name">높은가격순</label>
                                                </li>
                                                <li class="">
                                                    <input type="radio" id="sorter-saleCountDesc" name="sorter"
                                                           value="saleCountDesc">
                                                    <label for="sorter-saleCountDesc" class="item-name">조회순</label>
                                                </li>
                                                <li class="">
                                                    <input type="radio" id="sorter-latestAsc" name="sorter"
                                                           value="latestAsc">
                                                    <label for="sorter-latestAsc" class="item-name">최신순</label>
                                                </li>
                                            </ul>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearFix">
                            </div>
                            <ul id="productList" class="baby-product-list" style="margin-right: 0px;padding-left: 1px;">
                                ${list}
                               <%-- <li class="baby-product renew-badge">
                                    <a class="baby-product-link"
                                       href="/fooditem/detail"
                                       style="height: 466px;">
                                        <dl class="baby-product-wrap adjust-spacing " style="height: 444px;">
                                            <dt class="image">
                                                <img src="/assets/img/이미지 1.jpg"
                                                     width="100%" alt="프린스 에드워드 아일랜드 블렌드 (냉동), 1kg, 2개">
                                            </dt>
                                            <dd class="descriptions">
                                                <div class="badges"></div>
                                                <div class="name"> 프린스 에드워드 아일랜드 블렌드 (냉동), 1kg, 2개</div>
                                                <div class="price-area ">
                                                    <div class="price-wrap">
                                                        <div class="price">
                                                            <strong class="price-value"
                                                                    style="font-size: 15px">19,900</strong>원
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="other-info">
                                                    <div class="rating-star"><span class="star">
                                                    <em class="rating" style="width: 70%;">5.0</em></span>
                                                        <span class="rating-total-count">(5384)</span>
                                                    </div>
                                                </div>
                                            </dd>
                                        </dl>
                                    </a>
                                </li>--%>
                            </ul>
                            <%--식자재 미리보기 --%>
                            <div id="pageHtml">
                                ${pageHtml}
                            </div>
                        </div>
                    </div>
                    <div class="newcx-nav">
                        <div class="newcx-search-filter search-filter" style="margin-top: 1px;">
                            <div class="filter-content" style="display: block;">
                                <div class="search-filter-options search-category-component"><h5>카테고리</h5>
                                    <div id="searchCategoryComponent" class="search-filter-option-list">
                                        <ul class="search-option-items">
                                            ${cList}
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js">
</script>
<script>
    const searchRadio = document.querySelectorAll('.sorting-order-options input[type="radio"]');
    searchRadio.forEach(radio => {
        radio.addEventListener('click', () => {
            const searchLi = document.querySelectorAll('.sorting-order-options li');
            console.log(radio.value)
            searchLi.forEach(li => {
                li.classList.remove('selected');
                li.querySelector('input[type="radio"]').checked = false;
            });
            //현재 클릭된 라디오 버튼의 부모 li 요소에 selected 클래스 추가하고 checked 속성을 true로 설정
            const parentLi = radio.parentElement;
            parentLi.classList.add('selected');
            radio.checked = true;
            let date = "order:" + radio.value;
            console.log("num: ",localStorage.getItem('num'))
            if(localStorage.getItem('num') !== null || !localStorage.getItem('num') !== ""){
                date += ",c_num:"+localStorage.getItem('num');
            }
            const queryString = window.location.search;
            const urlParams = new URLSearchParams(queryString);
            let pageNum = urlParams.get("pageNum");
            if(pageNum !== "1"){
                pageNum="1";
            }
            if(pageNum !== ""){
                date += ",pageNum:"+pageNum;
            }
            let dataObj = {};
            date.split(',').forEach(part =>{
                let [key, value] = part.split(':')
                dataObj[key] = value;
            })
            console.log(dataObj);
            console.log(date);
            $.ajax({
                type: 'get',
                url: "/fooditem/order",
                data: dataObj
            }).done((resp) => {
                $("#productList").html(resp.list)
                $("#pageHtml").html(resp.pageHtml)
                updateURLParameter('pageNum', pageNum);
            }).fail((err) => console.log(err))
        });
    });

    function searchctg(obj, c_num) {
        console.log("this",obj);
        console.log("ctgNum",c_num)
        localStorage.setItem('num',c_num)
        let dataObj = {};
        dataObj["c_num"] = c_num;
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        let pageNum = urlParams.get("pageNum");
        if(pageNum !== "1"){
            pageNum="1";
        }
        if(pageNum !== ""){
            dataObj["pageNum"] = pageNum;
        }
        $.ajax({
            method: "get",
            url: "/fooditem/searchctg",
            data: dataObj
        }).done((resp) => {
            const ctgImg = document.getElementsByClassName("newcx-top-multi-link-banner");
            ctgImg[0].style.display = 'none';
            const searchLi = document.querySelectorAll('.sorting-order-options li');
            searchLi.forEach(li => {
                li.classList.remove('selected');
                li.querySelector('input[type="radio"]').checked = false;
            });
            const listItem = obj.closest(".search-option-item")
            ctgButtonClick(listItem);
            const parentLi = searchRadio[0].parentElement;
            parentLi.classList.add('selected');
            parentLi.checked = true;
            $("#productList").html(resp.list)
            $("#pageHtml").html(resp.pageHtml)
            updateURLParameter('pageNum', pageNum);
            updateURLParameter("c_num",c_num);
        }).fail((err) => console.log(err))
    }
    function imgLink(c_num){
        const ctg = document.getElementById(c_num);
        const ctgLi = ctg.closest("li")
        console.log("ctg",ctgLi.querySelector(".seo-link-url"))
        const ctgLink = ctgLi.querySelector(".seo-link-url")
        searchctg(ctgLink,c_num)
    }

    document.addEventListener("DOMContentLoaded", function () {
        const foldButtons = document.querySelectorAll(".btn-fold");
        // 각 버튼에 클릭 이벤트 리스너 추가
        foldButtons.forEach(button => {
            button.addEventListener("click", function (event) {
                event.preventDefault();
                const listItem = this.closest(".search-option-item");
                ctgButtonClick(listItem);
            });
        });
    });

    function ctgButtonClick(result) {
        // 이 리스트 아이템 내의 자식 ul 요소 찾기
        const childUl = result.querySelector(".search-option-items-child");
        // 자식 ul 요소의 클래스 이름을 콘솔에 출력
        if(childUl===null){
            return null
        }
        console.log("cName",childUl.className);

        // 자식 ul 요소의 display 속성을 토글 및 클래스 추가/제거
        if (childUl.style.display === "block") {
            childUl.style.display = "none";
            result.classList.remove('selected', 'opened');
            result.classList.remove('on'); // 선택 사항: 버튼 스타일링을 위한 'on' 클래스 토글
        } else {
            childUl.style.display = "block";
            result.classList.add('selected', 'opened');
            result.classList.add('on'); // 선택 사항: 버튼 스타일링을 위한 'on' 클래스 토글
        }

    }
    function updateURLParameter(param, value) {
        var url = new URL(window.location.href);
        url.searchParams.set(param, value);
        window.history.pushState({}, '', url);
    }
    function  paging(pageNum){
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        const urlCnum = urlParams.get("c_num")
        let data = {
            pageNum : pageNum,
            c_num : urlCnum
        }
        $.ajax({
            method: "get",
            url: "/fooditem/paging",
            data: data
        }).done(resp =>{
            console.log(resp)
            $("#productList").html(resp.list)
            $("#pageHtml").html(resp.pageHtml)
            updateURLParameter('pageNum', pageNum);
            updateURLParameter("c_num",urlCnum);
        })
    }


</script>
</body>
</html>
