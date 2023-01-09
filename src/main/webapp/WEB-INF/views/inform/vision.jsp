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
    <title>비전 슬로건</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
        .content {width: 1200px; margin: 0 auto;}

        .vision {display: block; height: 50px; text-align: center; margin-right:50px; margin-top: 55px; padding: 5px; border-left: 5px solid red;}
        .goal {margin-right: 240px; margin-left: -150px; margin-top: 15px; line-height: 45px; border-left: 5px solid red; height: 50px; padding: 5px;}
        .imp {border-left: 5px solid red; height: 50px; padding: 5px; margin-left: -150px;}
        .slo {border-left: 5px solid red; height: 50px; padding: 5px; margin-left: 10px;}

        .vision2 {margin-left: 200px;}
        .content_sub:after {background-image: url("${path1}/resources/img/vision/cross.gif"); height: 50px; width: 50px; display: block; position: absolute; content: ''; background-repeat: no-repeat; margin-left: 225px; margin-top: 55px;}
        .vision_tit {padding-top: 50px;}
        .vision_subTitle {display: flex; flex-wrap: wrap; justify-content: space-around; margin-top: 35px;}
        .bd_wrap {margin: 30px auto;}
        .content_o {display: flex; justify-content: space-evenly; flex-wrap: wrap;}
        .content_o:after {content:''; display: block; clear: both;}
        .content_sub {display: flex;}
        .content_t {display: flex; justify-content: center; margin: 35px;}
        .content_goal {border: 0.1em solid #8a8a8a; padding: 30px; border-radius: 10px;}
        .content_th {display: flex; justify-content: space-evenly;}
        .content_guide2 {margin-right: 50px;}
        .content_f {margin-right: 100px;}

        .vision_list {border-bottom: rgba(25, 39, 112, 0.16) 0.01em solid; text-align: left; }
        .guide_tit {background: url("${path1}/resources/img/vision/subtitle_check.gif") left 6px no-repeat; font-weight: bold; font-size: 19px; background-size: 10px; margin-right: 10px;}
        .guide_tit1 {background: url("${path1}/resources/img/vision/subtitle_check.gif") left 6px no-repeat; font-weight: bold; font-size: 19px; background-size: 10px; margin-right: 40px;}
        .vision_list > li:after {background-image: url("${path1}/resources/img/vision/list_icon01.jpg"); content: ''; height: 20px; width: 20px; display: block; background-repeat: no-repeat; position: absolute; margin-left: -23px; margin-top: -22px; background-size: 20px;}

        .bread {border-bottom: 0.01em solid rgba(25, 39, 112, 0.16); border-top: 0.01em solid rgba(25, 39, 112, 0.16); margin-top: 10px;}
        .breadcrumbs {margin: 0; padding: 10px;}
        .breadcrumbs > li  {font-size: 20px;}
    </style>
</head>
<body>
<%-- 네비게이션 --%>
<jsp:include page="../include/header.jsp"></jsp:include>
<%-- 브래드크럼 --%>
<nav aria-label="You are here:" role="navigation" class="bread">
    <ul class="breadcrumbs">
        <li><a href="${path1}/">Home</a></li>
        <li><a href="${path1}/inform/vision.do">식약처소개</a></li>
        <li>
            <span class="show-for-sr">Current: </span> 비전 슬로건
        </li>
    </ul>
</nav>
<div class="content column text-center">
    <h2 class="vision_tit">비전</h2>
    <div class="bd_wrap">
        <div class="content_o">
            <h4 class="vision">비전</h4>
            <div class="content_guide">
                <ul class="content_sub">
                    <li class="vision1">
                        <img src="${path1}/resources/img/vision/vision.jpg" alt="vision1">
                        <strong><p>안전한 식의약</p></strong>
                    </li>
                    <li class="vision2">
                        <img src="${path1}/resources/img/vision/vision2.jpg" alt="vision2">
                        <strong><p>건강한 국민</p></strong>
                    </li>
                </ul>
            </div>
        </div>
        <div class="content_t">
            <h4 class="goal">목표</h4>
            <div class="content_guide">
                <ul class="content_sub1 content_goal">
                    <li>
                        "제품에서 <b>사람 중심</b> 으로 식의약 안전정책 <b>패러다임 전환</b>
                    </li>
                </ul>
            </div>
        </div>
        <div class="content_th">
            <h4 class="imp">핵심전략</h4>
            <div class="content_guide2">
                <div>
                    <h5 class="guide_tit">소비자가 더 건강해지는 먹거리 안전</h5>
                    <ul class="vision_list">
                        <li>
                            어린이 먹거리 안전수준을 높이겠습니다.
                        </li>
                        <li>
                            식품의 생산·유통과정을 혁신하겠습니다.
                        </li>
                        <li>
                            소비자의 건강한 식생활을 지원하겠습니다.
                        </li>
                    </ul>
                </div>
                <div>
                    <h5 class="guide_tit">환자가 안심할 수 있는 약, 의료기기</h5>
                    <ul class="vision_list">
                        <li>
                            환자 중심 관리체계로 전환하겠습니다.
                        </li>
                        <li>
                            의약품 등 허가제도를 혁신하겠습니다.
                        </li>
                        <li>
                            유통 제품은 더욱 철저히 점검하겠습니다.
                        </li>
                        <li>
                            생활 속 안전 사각지대를 해소하겠습니다.
                        </li>
                    </ul>
                </div>
                <div>
                    <h5 class="guide_tit1">공감과 혁신을 더한 식의약 안전</h5>
                    <ul class="vision_list">
                        <li>
                            소통하고 협력하겠습니다.
                        </li>
                        <li>
                            규제혁신으로 혁신성장을 지원하겠습니다.
                        </li>
                        <li>
                            식의약 안전 글로벌  강국으로 도약하겠습니다.
                        </li>
                        <li>
                            선제적 연구개발로 미래를 준비하겠습니다.
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="vision_subTitle">
            <h3 class="slo">슬로건</h3>
            <div class="content_f">
                <div class="content_guide2">
                    <ul class="content_sub2">
                        <li>
                            <img src="${path1}/resources/img/vision/vision3.jpg" alt="vision3">
                        </li>
                        <li>
                            <img src="${path1}/resources/img/vision/vision4.jpg" alt="vision4">
                        </li>
                    </ul>
                </div>
            </div>
            <div class="content_fiv">
                <h4>설명</h4>
                <ul class="fiv_list">
                    <li>
                        <strong>(문구)</strong> 과학을 기반으로 식품·의약품 안전관리를 책임지는 전문 기관으로서, 국민이 안심할 수 있는 기준을 만들고 지키겠다는 의미
                    </li>
                    <li>
                        <strong>(디자인)</strong> 글자를 감싸는 집 모양의 안정감 있는 일러스트, 정부상징과 동일한 폰트로 통일감 부여
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
