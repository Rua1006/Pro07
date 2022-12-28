<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<header>
  <!-- 상단 네비게이션 -->
  <div class="top-bar">
    <div class="top-bar-left">
      <ul class="menu">
        <li class="menu-text">Marketing Site</li>
        <li><a href="${path1}/notice/list">공지사항리스트 테스트</a></li>
        <li><a href="#">Two</a></li>
      </ul>
    </div>
    <div class="top-bar-right">
      <ul class="menu">
        <li><a href="#">Three</a></li>
        <li><a href="#">Four</a></li>
        <li><a href="#">Five</a></li>
        <li><a href="#">Six</a></li>
      </ul>
    </div>
  </div>
</header>
