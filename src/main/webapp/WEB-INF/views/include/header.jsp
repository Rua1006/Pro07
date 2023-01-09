<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<style>
  .top-bar {background-color : midnightblue;}
  .top-bar ul {background-color : midnightblue;}
  .menu a {color: #ffffff}
  .dropdown a {color : #ffffff}
  .dropdown.menu > li.is-dropdown-submenu-parent > a::after {border-color: #ffffff transparent transparent;}
  .is-dropdown-submenu-item {background-color: #ffffff;}
  .submenu-item {color: midnightblue !important;}
  .mfds_logo {width: 250px;}
</style>
<header>
  <a href="${path1}/"><img src="${path1}/resources/img/mfds_logo.png" alt="mfds_logo" class="mfds_logo"></a>
  <!-- 콘텐츠 메뉴 nav 좌측 -->
  <div class="top-bar">
    <div class="top-bar-left">
      <ul class="dropdown menu" data-dropdown-menu>
        <li>
          <a href="">정보공개</a>
          <ul class="menu">
            <li><a href="#" class="submenu-item">정보공개 목록</a></li>
            <li><a href="#" class="submenu-item">예산결산정보 공개</a></li>
            <li><a href="#" class="submenu-item">주요위원회</a></li>
          </ul>
        </li>
        <li>
          <a href="#">국민소통</a>
          <ul class="menu">
            <li><a href="#" class="submenu-item">자유게시판</a></li>
            <li><a href="${path1}/qna/list.do" class="submenu-item">국민제안</a></li>
            <li><a href="#" class="submenu-item">국민신문고</a></li>
            <li><a href="#" class="submenu-item">통화상담</a></li>
          </ul>
        </li>
        <li>
          <a href="${path1}/notice/list.do">알림</a>
          <ul class="menu">
            <li><a href="${path1}/notice/list.do" class="submenu-item">공지/공고</a></li>
            <li><a href="${path1}/news/list.do" class="submenu-item">언론홍보자료</a></li>
            <li><a href="#" class="submenu-item">공시송달</a></li>
          </ul>
        </li>
        <li>
          <a href="#">식약처 소개</a>
          <ul class="menu">
            <li><a href="${path1}/inform/vision.do" class="submenu-item">비전·슬로건</a></li>
            <li><a href="${path1}/inform/history.do" class="submenu-item">연혁</a></li>
            <li><a href="${path1}/data/organization.do" class="submenu-item">조직도,부서</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <!-- 접속 관련 nav 우측 -->
    <div class="top-bar-right">
      <ul class="menu">
        <c:if test="${empty sid}">
          <li><a href="${path1}/users/loginForm.do">로그인</a></li>
          <li><a href="${path1}/users/agree.do">회원가입</a></li>
        </c:if>
        <c:if test="${not empty sid}">
          <li><a href="${path1}/users/logout.do">로그아웃</a></li>
          <li><a href="${path1}/users/read.do">회원정보</a></li>
        </c:if>
        <c:if test="${sid eq 'admin'}">
          <li><a href="${path1}/users/getUsers.do">관리자 페이지</a></li>
        </c:if>
      </ul>
    </div>
  </div>
</header>
