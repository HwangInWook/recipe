<%--
  Created by IntelliJ IDEA.
  User: dnjs1
  Date: 24. 7. 5.
  Time: 오전 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script defer src="/common/js/jquery-3.7.1.min.js"></script>
    <style>
        main {
            display: flex;
            font-size: 14px;
            line-height: 1.42857143;
            color: #333;
            margin: 0;
        }
        .nav-tabs2>li {
            float: left;
            margin-bottom: -1px;
            background: #fff;
            border-right: 1px solid #e0e0e0;
            color: #999;
        }
        .nav-tabs2>li>a {
            line-height: 1.42857143;
            border: 1px solid transparent;
            padding: 6px 22px;
        }
        .main__div {
            display: block;
            margin: 0 auto;
            width:1300px;
            border: 1px solid #e6e7e8;
            background-color: #ffffff;
        }

        .main__div .categoryon .cg1 {
            /*padding: 12px 0px 0px;*/
            /*margin: 0px 5px 0px 0px;*/
            color: #74b243;
            display: block;
            font-weight: 600;

            text-align: center;
            /*padding-top: 6px;*/
            vertical-align: middle;
            font-size: 15px;
            height: 23px;
            width: 100%;
            padding-top: 12px;
            flex-shrink: 0;
        }

        .cate_list {
            padding: 15px;
        }

        .cate_list a {
            padding: 3px 8px 4px;
            color: #666;
            vertical-align: middle;
            font-size: 15px;
            line-height: 1;
        }

        .rcp_cate {
            margin-top: 2px;
            border: 1px solid #e6e7e8;
            border-bottom: none;
            background-color: #fff;
            padding: 15px 30px 28px;
        }

        .rcp_cate_btn {
            border: 1px solid #e6e7e8;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 10px;
        }

        .rcp_m_list2 .m_list_tit {
            font-size: 16px;
            color: #333;
            padding: 5px 0 20px 8px;
        }

        .m_list_tit {
            padding: 20px;
        }

        .m_list_tit li {
            padding: 0 10px;
        }
        .common_sp_list_ul.ea4 li {
            width: 282px;
        }
        .common_sp_list_li {
            list-style: none;
            padding: 0;
            margin: 0 8.5px 40px;
            display: inline-block;
            vertical-align: top;
            position: relative;

        }
        .common_sp_thumb img{
            border-radius: 3px;
        }
        .common_sp_caption_rv_name img {
            width: 22px;
            height: 22px;
            border-radius: 50%;
            margin: 0 4px -2px 0;
            vertical-align: text-bottom;
        }
        .common_sp_caption_rv {
            vertical-align: super;
            line-height: 1;
            margin: 0 0 9px 0;
        }
        .common_sp_caption_rv_star img {
            width: 14px;
           /* margin-right: 1px;*/
            margin: 0;
        }
        .common_sp_caption_rv_ea {
            color: #999;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
            font-size: 12px;
            vertical-align: middle;
            padding-left: 1px;
            line-height: normal;
        }
        .common_sp_caption_buyer {
            color: #999;
            font-size: 13px;
            margin-left: 2px;
        }

        .common_sp_caption_tit.line2 {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            word-wrap: break-word;
            white-space: normal;
            line-height: 1.5;
        }
    </style>

</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<main >
    <div class="main__div">
        <div class="categoryon">
            <table>
                <colgroup>
                    <col width="100px">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th style="padding: 10px">
                        <span class="cg1">종류별</span><br>
                        <span class="cg1">상황별</span><br>
                        <span class="cg1">재료별</span><br>
                        <span class="cg1">방법별</span><br>
                    </th>
                    <td>
                        <div class="rcp_cate st3">
                            <div class="cate_list">
                                <a class="active">전체</a><a>밑반찬</a><a>메인반찬</a><a>국/탕</a><a>찌개</a><a>디저트</a><a>면/만두</a><a>밥/죽/떡</a><a>퓨전</a><a>김치/젓갈/장류</a><a>양념/소스/잼</a><a>양식</a><a>샐러드</a><a>스프</a><a>빵</a><a>과자</a><a>차/음료/술</a><a>기타</a>
                            </div>
                            <div class="cate_list">
                                <a class="active">전체</a><a>일상</a><a>초스피드</a><a>손님접대</a><a>술안주</a><a>다이어트</a><a>도시락</a><a>영양식</a><a>간식</a><a>야식</a><a>푸드스타일링</a><a>해장</a><a>명절</a><a>이유식</a><a>기타</a>
                            </div>
                            <div class="cate_list">
                                <a class="active">전체</a><a>소고기</a><a>돼지고기</a><a>닭고기</a><a>육류</a><a>채소류</a><a>해물류</a><a>달걀/유제품</a><a>가공식품류</a><a>쌀</a><a>밀가루</a><a>건어물류</a><a>버섯류</a><a>과일류</a><a>콩/견과류</a><a>곡류</a><a>기타</a>
                            </div>
                            <div class="cate_list">
                                <a class="active">전체</a><a>볶음</a><a>끓이기</a><a>부침</a><a>조림</a><a>무침</a><a>비빔</a><a>찜</a><a>절임</a><a>튀김</a><a>삶기</a><a>굽기</a><a>데치기</a><a>회</a><a>기타</a>
                            </div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="rcp_cate_btn">
            <a href="javascript:ToggleCategory()">
                <span id="id_search_category_text">카테고리 닫기</span>
                <span><img id="id_search_category_img"
                           src="https://recipe1.ezmember.co.kr/img/icon_arrow9_up.gif"></span>
            </a>
        </div>
        <div class="m_list_tit">
            총 <b>226,013</b>개의 맛있는 레시피가 있습니다.
            <ul class="nav nav-tabs2 pull-right" style="float: right;">
                <li role="presentation"><a href="javascript:void(0);"
                                           onclick="goSearchRecipe('order','accuracy')">정확순</a></li>
                <li role="presentation"><a href="javascript:void(0);" onclick="goSearchRecipe('order','date')">최신순</a>
                </li>
                <li role="presentation" class="active"><a href="javascript:void(0);"
                                                          onclick="goSearchRecipe('order','reco')">추천순</a></li>
            </ul>
        </div>
        <ul class="common_sp_list_ul ea4" style="padding:0 45px;">
            <li class="common_sp_list_li">
                <div class="common_sp_thumb">
                    <a href="/recipe/7027008" class="common_sp_link">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2024/05/24/4c28d87dbd0ad39f7793f43d1f7500ab1_m.jpg">
                    </a>
                </div>
                <div class="common_sp_caption">
                    <div class="common_sp_caption_tit line2">고추장 대신 된장소스 곁들인 감칠맛 가득 부추비빔밥</div>
                    <div class="common_sp_caption_rv_name" style="display: inline-block; vertical-align: bottom;">
                        <a href="/profile/recipe.html?uid=gdubu33"><img
                                src="https://recipe1.ezmember.co.kr/cache/rpf/2016/01/29/900013400086b533aef0411aeb3ee7d71.png">만개의레시피</a>
                    </div>
                    <div class="common_sp_caption_rv">
                        <span class="common_sp_caption_rv_star"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"></span>
                        <span class="common_sp_caption_rv_ea">(2)</span>
                        <span class="common_sp_caption_buyer" style="vertical-align: middle;">조회수 3,651</span>
                    </div>
                </div>
            </li>
            <li class="common_sp_list_li">
                <div class="common_sp_thumb">
                    <a href="/recipe/7027008" class="common_sp_link">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2024/05/24/4c28d87dbd0ad39f7793f43d1f7500ab1_m.jpg">
                    </a>
                </div>
                <div class="common_sp_caption">
                    <div class="common_sp_caption_tit line2">고추장 대신 된장소스 곁들인 감칠맛 가득 부추비빔밥</div>
                    <div class="common_sp_caption_rv_name" style="display: inline-block; vertical-align: bottom;">
                        <a href="/profile/recipe.html?uid=gdubu33"><img
                                src="https://recipe1.ezmember.co.kr/cache/rpf/2016/01/29/900013400086b533aef0411aeb3ee7d71.png">만개의레시피</a>
                    </div>
                    <div class="common_sp_caption_rv">
                        <span class="common_sp_caption_rv_star"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"></span>
                        <span class="common_sp_caption_rv_ea">(2)</span>
                        <span class="common_sp_caption_buyer" style="vertical-align: middle;">조회수 3,651</span>
                    </div>
                </div>
            </li>
            <li class="common_sp_list_li">
                <div class="common_sp_thumb">
                    <a href="/recipe/7027008" class="common_sp_link">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2024/05/24/4c28d87dbd0ad39f7793f43d1f7500ab1_m.jpg">
                    </a>
                </div>
                <div class="common_sp_caption">
                    <div class="common_sp_caption_tit line2">고추장 대신 된장소스 곁들인 감칠맛 가득 부추비빔밥</div>
                    <div class="common_sp_caption_rv_name" style="display: inline-block; vertical-align: bottom;">
                        <a href="/profile/recipe.html?uid=gdubu33"><img
                                src="https://recipe1.ezmember.co.kr/cache/rpf/2016/01/29/900013400086b533aef0411aeb3ee7d71.png">만개의레시피</a>
                    </div>
                    <div class="common_sp_caption_rv">
                        <span class="common_sp_caption_rv_star"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"></span>
                        <span class="common_sp_caption_rv_ea">(2)</span>
                        <span class="common_sp_caption_buyer" style="vertical-align: middle;">조회수 3,651</span>
                    </div>
                </div>
            </li>
            <li class="common_sp_list_li">
                <div class="common_sp_thumb">
                    <a href="/recipe/7027008" class="common_sp_link">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2024/05/24/4c28d87dbd0ad39f7793f43d1f7500ab1_m.jpg">
                    </a>
                </div>
                <div class="common_sp_caption">
                    <div class="common_sp_caption_tit line2">고추장 대신 된장소스 곁들인 감칠맛 가득 부추비빔밥</div>
                    <div class="common_sp_caption_rv_name" style="display: inline-block; vertical-align: bottom;">
                        <a href="/profile/recipe.html?uid=gdubu33"><img
                                src="https://recipe1.ezmember.co.kr/cache/rpf/2016/01/29/900013400086b533aef0411aeb3ee7d71.png">만개의레시피</a>
                    </div>
                    <div class="common_sp_caption_rv">
                        <span class="common_sp_caption_rv_star"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"></span>
                        <span class="common_sp_caption_rv_ea">(2)</span>
                        <span class="common_sp_caption_buyer" style="vertical-align: middle;">조회수 3,651</span>
                    </div>
                </div>
            </li>
            <li class="common_sp_list_li">
                <div class="common_sp_thumb">
                    <a href="/recipe/7027008" class="common_sp_link">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2024/05/24/4c28d87dbd0ad39f7793f43d1f7500ab1_m.jpg">
                    </a>
                </div>
                <div class="common_sp_caption">
                    <div class="common_sp_caption_tit line2">고추장 대신 된장소스 곁들인 감칠맛 가득 부추비빔밥</div>
                    <div class="common_sp_caption_rv_name" style="display: inline-block; vertical-align: bottom;">
                        <a href="/profile/recipe.html?uid=gdubu33"><img
                                src="https://recipe1.ezmember.co.kr/cache/rpf/2016/01/29/900013400086b533aef0411aeb3ee7d71.png">만개의레시피</a>
                    </div>
                    <div class="common_sp_caption_rv">
                        <span class="common_sp_caption_rv_star"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"></span>
                        <span class="common_sp_caption_rv_ea">(2)</span>
                        <span class="common_sp_caption_buyer" style="vertical-align: middle;">조회수 3,651</span>
                    </div>
                </div>
            </li>
            <li class="common_sp_list_li">
                <div class="common_sp_thumb">
                    <a href="/recipe/7027008" class="common_sp_link">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2024/05/24/4c28d87dbd0ad39f7793f43d1f7500ab1_m.jpg">
                    </a>
                </div>
                <div class="common_sp_caption">
                    <div class="common_sp_caption_tit line2">고추장 대신 된장소스 곁들인 감칠맛 가득 부추비빔밥</div>
                    <div class="common_sp_caption_rv_name" style="display: inline-block; vertical-align: bottom;">
                        <a href="/profile/recipe.html?uid=gdubu33"><img
                                src="https://recipe1.ezmember.co.kr/cache/rpf/2016/01/29/900013400086b533aef0411aeb3ee7d71.png">만개의레시피</a>
                    </div>
                    <div class="common_sp_caption_rv">
                        <span class="common_sp_caption_rv_star"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"></span>
                        <span class="common_sp_caption_rv_ea">(2)</span>
                        <span class="common_sp_caption_buyer" style="vertical-align: middle;">조회수 3,651</span>
                    </div>
                </div>
            </li>
            <li class="common_sp_list_li">
                <div class="common_sp_thumb">
                    <a href="/recipe/7027008" class="common_sp_link">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2024/05/24/4c28d87dbd0ad39f7793f43d1f7500ab1_m.jpg">
                    </a>
                </div>
                <div class="common_sp_caption">
                    <div class="common_sp_caption_tit line2">고추장 대신 된장소스 곁들인 감칠맛 가득 부추비빔밥</div>
                    <div class="common_sp_caption_rv_name" style="display: inline-block; vertical-align: bottom;">
                        <a href="/profile/recipe.html?uid=gdubu33"><img
                                src="https://recipe1.ezmember.co.kr/cache/rpf/2016/01/29/900013400086b533aef0411aeb3ee7d71.png">만개의레시피</a>
                    </div>
                    <div class="common_sp_caption_rv">
                        <span class="common_sp_caption_rv_star"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"><img
                                src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"></span>
                        <span class="common_sp_caption_rv_ea">(2)</span>
                        <span class="common_sp_caption_buyer" style="vertical-align: middle;">조회수 3,651</span>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <script>
        function ToggleCategory() {
            const ctg__text = document.getElementById("id_search_category_text");
            const ctg = document.getElementsByClassName("categoryon")[0];
            const ctg__img = document.getElementById("id_search_category_img");
            if (ctg__text.innerHTML === "카테고리 닫기") {
                ctg__text.innerHTML = "카테고리 열기"
                ctg.style.display = "none"
                ctg__img.src = "https://recipe1.ezmember.co.kr/img/icon_arrow9_down.gif"
            } else {
                ctg__text.innerHTML = "카테고리 닫기"
                ctg.style.display = "block"
                ctg__img.src = "https://recipe1.ezmember.co.kr/img/icon_arrow9_up.gif"
            }
        }
    </script>
</main>
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
</body>
</html>
