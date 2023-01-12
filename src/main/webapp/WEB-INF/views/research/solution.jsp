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
    <title>통합상담</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
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
        <li><a href="#">국민소통</a></li>
        <li>
            <span class="show-for-sr">Current: </span> 통합상담
        </li>
    </ul>
</nav>
<div content="content" class="content">
    <h2 class="solu_tit">통합상담예약</h2>
    <div class="content_o">
        <div class="content_wrap">
            <h5 class="content_guide_tit">통합상담예약 안내</h5>
            <div class="content_wrap_comment">
                <span>최근 사회적 거리두기 격상 등 <b style="color: crimson">코로나19 확산이 지속</b>되고 있으므로 민원상담은 가급적 <b style="color: crimson">영상(온나라PC, 웹엑스 PC·모바일)상담으로 예약신청, 적극 활용</b>하시기 바랍니다.</span>
                <span>※ 민원실에 내방하는 경우, <b>방문인원을 최소화</b>하고 민원인분들과 직원분들을 위해 <b>마스크 착용 등 방역지침준수</b>에 협조 바랍니다. </span>
            </div>
            <div class="content_list">
                <ul>
                    <li>원활한 상담서비스 이용과 익명 사용자로 인한 피해방지를 위하여 휴대폰 인증을 하여야 상담예약이 가능합니다.</li>
                    <li>상담의 경우, 희망예약일로부터 3~7일전에 신청 사전예약을 하지 않은 민원상담의 경우 원할한 상담이 어려울 수 있으니 양해바랍니다.</li>
                    <li>부서에서 예약이 확정되면 예약자의 휴대폰으로 문자메시지가 전송됩니다. 반드시 예약확정여부를 확인하시고 방문하여주시기 바랍니다.</li>
                    <li>예약사항에 대한 변경건이 있는 경우 부서담당자에게 연락하시기 바랍니다.</li>
                    <li>예약완료된 건은 예약취소를 하실 수 없습니다.</li>
                    <li>본 서비스는 14세 미만의 경우에는 사용하실 수 없습니다.</li>
                </ul>
            </div>
        </div>

    </div>
</div>
</body>
</html>
