<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>식품의약안전처</title>
    <style>
        .main1 {width: 20%; height: 30vh; border-radius: 20px; margin: 20px;}
        .main2 {width: 20%; height: 30vh; border-radius: 20px; margin: 20px;}
        .main3 {width: 20%; height: 30vh; border-radius: 20px; margin-right: 20%;}
        .main4 {width: 20%; height: 30vh; border-radius: 20px; margin: 20px;}
        .main5 {width: 20%; height: 30vh; border-radius: 20px; margin: 20px;}
        .main6 {width: 20%; height: 30vh; border-radius: 20px; margin-right: 20%;}
        .orbit-slide {margin-left: 20%;}
        .orbit {background-image: url("${path1}/resources/img/main/main_bg_01.jpg"); height: 90vh;}

        .bottom_content {background-color: #283150;}
        .bottom_col {background-color: #ffffff; width: 30%; height: auto;}
        .bottom_title {margin: 0 auto; color: #ffffff;}
        .bottom_subtitle {margin: 0 auto; color: #ffffff;}
    </style>
    <jsp:include page="include/head.jsp"></jsp:include>
</head>
<body>
    <%-- 네비게이션 --%>
    <jsp:include page="include/header.jsp"></jsp:include>
    <%-- 메인삽입 --%>
    <div content="content">
        <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit data-options="animInFromLeft:fade-in; animInFromRight:fade-in; animOutToLeft:fade-out; animOutToRight:fade-out;">
            <ul class="orbit-container">
                <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
                <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
                <li class="is-active orbit-slide">
                    <img src="${path1}/resources/img/main/main1.jpg" alt="mainbanner" class="main1">
                    <img src="${path1}/resources/img/main/main2.jpg" alt="mainbanner" class="main2">
                    <img src="${path1}/resources/img/main/main3.jpg" alt="mainbanner" class="main3">
                    <img src="${path1}/resources/img/main/main4.jpg" alt="mainbanner" class="main4">
                    <img src="${path1}/resources/img/main/main5.jpg" alt="mainbanner" class="main5">
                    <img src="${path1}/resources/img/main/main6.jpg" alt="mainbanner" class="main6">
                </li>
            </ul>
            <nav class="orbit-bullets">
                <button class="is-active" data-slide="0"><span class="show-for-sr">First slide details.</span><span class="show-for-sr">Current Slide</span></button>
            </nav>
        </div>
        <div class="bottom_content">
            <h2 class="bottom_title">정책정보</h2>
            <h4 class="bottom_subtitle">식품의약안전처에서 시행하는 정책들의 정보를 확인하실 수 있습니다.</h4>
            <div class="row">
                <div class="columns small-3 bottom_col">
                    <span class="tit">위해정보</span>
                    <span class="comment">위해요소의 사전관리, 위기대응</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">위해정보</span>
                    <span class="comment">위해요소의 사전관리, 위기대응</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">위해정보</span>
                    <span class="comment">위해요소의 사전관리, 위기대응</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">위해정보</span>
                    <span class="comment">위해요소의 사전관리, 위기대응</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">위해정보</span>
                    <span class="comment">위해요소의 사전관리, 위기대응</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">위해정보</span>
                    <span class="comment">위해요소의 사전관리, 위기대응</span>
                </div>
            </div>
        </div>
    </div>
    <%-- 하단푸터 --%>
    <jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>
