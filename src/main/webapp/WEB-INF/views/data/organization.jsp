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
  <title>조직도</title>
  <jsp:include page="../include/head.jsp"></jsp:include>
  <style>
    .content {width: 1500px; margin: 0 auto;}
    .orga_tit {text-align: center; margin-top: 100px; margin-bottom: 30px;}
    .orga_img {width: 1500px; margin-left: 275px;}

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
      <span class="show-for-sr">Current: </span> 조직도
    </li>
  </ul>
</nav>
<div content="content" class="content">
  <h2 class="orga_tit">조직도</h2>
  <div class="organization_img">
    <img src="${path1}/resources/img/organization/organization.png" alt="organi" class="orga_img">
  </div>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
