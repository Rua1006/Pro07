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
    <div>

    </div>
</div>
</body>
</html>
