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
        .main1 {width: 380px; height: 235px; border-radius: 20px; margin: 20px;}
        .main2 {width: 380px; height: 235px; border-radius: 20px; margin: 20px;}
        .main3 {width: 380px; height: 235px; border-radius: 20px; margin: 20px;}
        .main4 {width: 380px; height: 235px; border-radius: 20px; margin: 20px;}
        .main5 {width: 380px; height: 235px; border-radius: 20px; margin: 20px;}
        .main6 {width: 380px; height: 235px; border-radius: 20px; margin: 20px;}
        .orbit-container {margin-left: 362px !important; margin-right: 270px !important;}
        .orbit {background-image: url("${path1}/resources/img/main/main_bg_01.jpg"); height: 840px;}

        .top_content {width: 1000px; height: 170px; margin: 45px auto; background-color: #ffffff; border-radius: 10px;}
        .top_tit {text-align: center; padding: 15px;}
        .circle_list {display: flex; flex-wrap: nowrap; justify-content: space-evenly;}
        .circle_box1 {width: 50px; height: 50px; border: 0.01em solid #7a7aa1; border-radius: 25px; background-image: url("${path1}/resources/img/icon/document.gif"); background-size: 46px;
            background-position: center; text-align: center;}
        .circle_box2 {width: 50px; height: 50px; border: 0.01em solid #7a7aa1; border-radius: 25px; background-image: url("${path1}/resources/img/icon/video.gif"); background-size: 46px;
            background-position: center; text-align: center;}
        .circle_box3 {width: 50px; height: 50px; border: 0.01em solid #7a7aa1; border-radius: 25px; background-image: url("${path1}/resources/img/icon/support.gif"); background-size: 46px;
            background-position: center; text-align: center;}
        .circle_box4 {width: 50px; height: 50px; border: 0.01em solid #7a7aa1; border-radius: 25px; background-image: url("${path1}/resources/img/icon/customer.gif"); background-size: 46px;
            background-position: center; text-align: center;}
        .circle_text1 {display: block; margin-top: 50px;}
        .circle_text2 {display: block; margin-top: 50px; margin-left: -23px; width: 100px;}
        .circle_text3 {display: block; margin-top: 50px; margin-left: -25px; width: 100px;}
        .circle_text4 {display: block; margin-top: 50px;}

        .row {display: flex; flex-wrap: wrap; justify-content: center; padding: 50px; text-align: center;}
        .bottom_content {background-color: #283150;}
        .bottom_col {background-color: #ffffff; width: 450px; height: 235px; border-radius: 10px; margin: 20px;}
        .bottom_title {text-align: center; color: #ffffff; padding-top: 50px; font-weight: 900;}
        .bottom_subtitle {text-align: center; color: #ffffff; padding-top: 30px;}
        .tit {display: block; font-size: 30px; font-weight: 900; margin: 10%;}
        .comment {display: block;}
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
            <div class="top_content">
                <h3 class="top_tit">자주찾는 메뉴</h3>
                <div class="circle_list">
                    <div class="circle_box1">
                        <a href="${path1}/notice/list.do" class="circle_text1">공지</a>
                    </div>
                    <div class="circle_box2">
                        <a href="${path1}/news/list.do" class="circle_text2">보도자료</a>
                    </div>
                    <div class="circle_box3">
                        <a href="#" class="circle_text3">통화상담예약</a>
                    </div>
                    <div class="circle_box4">
                        <a href="#" class="circle_text4">조직도</a>
                    </div>
                </div>
            </div>
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
                    <span class="tit">식품</span>
                    <span class="comment">식품의 안전 정책을 총괄하고 <br> 관련 법령법률 및 제도를 만들거나 개선</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">의약품</span>
                    <span class="comment">의약품 품질수준, 안전성 지속 검증</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">바이오</span>
                    <span class="comment">생물체 및 그 유래물질을 이용한 <br> 생물공학 응용 제조 제품 관리</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">화장품</span>
                    <span class="comment">화장품 관련 정책의 수립 및 조정</span>
                </div>
                <div class="columns small-3 bottom_col">
                    <span class="tit">의약외품</span>
                    <span class="comment">의약외품 관련 정책의 수립 및 조정</span>
                </div>
            </div>
        </div>
    </div>
    <%-- 하단푸터 --%>
    <jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>
