<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24. 8. 1.
  Time: 오후 1:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header>
    <jsp:include page="../common/header.jsp"></jsp:include>
</header>
<script>
    console.log(${mainSearchList})
</script>
<section>
    <h1 style="font-weight: bold; color: #77b347; margin-top: 50px; margin-left: 100px">● - - - - - 검색결과</h1>
</section>
<main id="searchMain" style="justify-content: center; background-color: white;">
    <%--    <div style="width: 80%; margin-left: 10%">--%>
    <%--        <c:choose>--%>
    <%--            <c:when test="${not empty mainSearchList}">--%>
    <%--                <c:set var="isEmptyList" value="true"/>--%>
    <%--                <c:forEach var="item" items="${mainSearchList}">--%>
    <%--                    <c:if test="${not empty item}">--%>
    <%--                        <c:set var="isEmptyList" value="false"/>--%>
    <%--                    </c:if>--%>
    <%--                </c:forEach>--%>
    <%--                <c:if test="${not isEmptyList}">--%>
    <%--                    <h3 style="color: #77b347; text-align: center">리스트 확인용</h3>--%>
    <%--                    <c:forEach var="item" items="${mainSearchList}">--%>
    <%--                        <c:forEach var="subItem" items="${item}">--%>
    <%--                            ${subItem}--%>
    <%--                            <hr style="height: 3px; border: 0; background-color: #77b347">--%>
    <%--                        </c:forEach>--%>
    <%--                    </c:forEach>--%>
    <%--                </c:if>--%>
    <%--            </c:when>--%>
    <%--            <c:otherwise>--%>
    <%--                <h2 style="color: #77b347; text-align: center">검색 결과가 존재하지 않습니다.</h2>--%>
    <%--            </c:otherwise>--%>
    <%--        </c:choose>--%>
    <%--    </div>--%>
    <div style="margin-top: 100px">
        <c:forEach var="innerList" items="${mainSearchList}" varStatus="status">
            <c:if test="${not empty innerList}">
                <c:choose>
                    <c:when test="${status.index == 0 and not empty mainSearchList[0]}">
                        <div style="width: 30%; text-align: center; margin: 0 auto 0">
                            <h3 style="color: #77b347; text-align: center">카테고리</h3><br>
                            <table class='table my-0' id='dataList'>
                                <tr id='mInven'
                                    style='vertical-align: center;background-color: #77b347; color: white'>
                                    <th class='no-hover'>#</th>
                                    <th class='no-hover'>
                                        <h4>분류 코드</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>이름</h4>
                                    </th>
                                </tr>
                                <c:forEach var="elem" items="${mainSearchList[0]}" varStatus="i">
                                    <tr class='inven' onclick="searchDetailModal(this);">
                                        <td>${i.count}</td>
                                        <td>${elem.c_num}</td>
                                        <td>${elem.c_name}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <br><br>
                        </div>
                    </c:when>
                    <c:when test="${status.index == 1 and not empty mainSearchList[1]}">
                        <div style="width: 80%; text-align: center; margin-left: 10%">
                            <h3 style="color: #77b347">식자재</h3><br>
                            <table class='table my-0'>
                                <tr style='vertical-align: center; background-color: #77b347; color: white'>
                                    <td class='no-hover'>#</td>
                                    <th class='no-hover'>
                                        <h4>글 번호</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>이름</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>가격</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>수량</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>등록일</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>유통기한</h4>
                                    </th>
                                    <th class='no-hover'>
                                        <h4>조회수</h4>
                                    </th>
                                </tr>
                                <c:forEach var="elem" items="${mainSearchList[1]}" varStatus="i">
                                    <tr class="invenAdd" onclick="searchDetailModal(this)">
                                        <td>${i.count}</td>
                                        <td>${elem.f_num}</td>
                                        <td>${elem.f_title}</td>
                                        <td>${elem.f_price}</td>
                                        <td>${elem.f_count}</td>
                                        <td>${elem.f_date}</td>
                                        <td>${elem.f_edate}</td>
                                        <td>${elem.f_views}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <br><br>
                        </div>
                    </c:when>
                    <c:when test="${status.index == 2 and not empty mainSearchList[2]}">
                        <div style="width: 80%; text-align: center; margin-left: 10%">
                            <h1 style="color: #77b347">물물교환 작성자</h1>
                            <table class='table my-0'>
                                <tr style='vertical-align: center; background-color: #77b347; color: white'>
                                    <th class="no-hover">#</th>
                                    <th class="no-hover">작성자 이름</th>
                                    <th class="no-hover">작성자 아이디</th>
                                    <th class="no-hover">게시글 제목</th>
                                    <th class="no-hover">등록일</th>
                                    <th class="no-hover">조회수</th>
                                    <th class="no-hover">상태</th>
                                    <c:forEach var="elem" items="${mainSearchList[2]}" varStatus="i">
                                <tr>
                                    <td>${i.count}</td>
                                    <td>${elem.m_name}</td>
                                    <td>${elem.m_id}</td>
                                    <td>${elem.t_title}</td>
                                    <td>${elem.t_date}</td>
                                    <td>${elem.t_views}</td>
                                    <c:choose>
                                        <c:when test="${elem.visible == 1}">
                                            <td>교환 진행중</td>
                                        </c:when>
                                        <c:when test="${elem.visible == 2}">
                                            <td>교환 완료</td>
                                        </c:when>
                                    </c:choose>
                                </tr>
                                </c:forEach>
                            </table>
                            <br><br>
                        </div>
                    </c:when>
                    <c:when test="${status.index == 3 and not empty mainSearchList[3]}">
                        <div style="width: 50%; text-align: center; margin: 0 auto 0">
                            <h1 style="color: #77b347">교환 목록</h1>
                            <table class='table my-0'>
                                <tr style='vertical-align: center; background-color: #77b347; color: white'>
                                    <th class="no-hover">#</th>
                                    <th class="no-hover">교환 등록된 식자재</th>
                                    <th class="no-hover">수량</th>
                                    <th class="no-hover">필요한 식자재</th>
                                    <c:forEach var="elem" items="${mainSearchList[3]}" varStatus="i">
                                <tr>
                                    <td>${i.count}</td>
                                    <td>${elem.t_item}</td>
                                    <td>${elem.t_itemcount}</td>
                                    <td>${elem.t_change}</td>
                                </tr>
                                </c:forEach>
                            </table>
                            <br><br>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <h2>검색 결과가 존재하지 않습니다.</h2>
                    </c:otherwise>
                </c:choose>
            </c:if>
        </c:forEach>
    </div>
</main>

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
<footer>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</footer>
</body>
</html>
