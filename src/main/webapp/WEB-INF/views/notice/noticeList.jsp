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
  <title>공지</title>
  <jsp:include page="../include/head.jsp"></jsp:include>
  <style>
    .content {height: 900px;}
    .notice_tit {padding-top: 50px;}
    .bd_wrap {margin: 12px auto; padding-left: 270px; padding-right: 270px;}
    .button-group {float: right;}
  </style>
</head>
<body>
<%-- 네비게이션 --%>
<jsp:include page="../include/header.jsp"></jsp:include>
<%-- 테이블 메인 --%>
<div class="content column text-center">
  <h2 class="notice_tit">공지</h2>
  <div class="bd_wrap">
    <table>
      <thead>
        <tr>
          <th>글번호</th>
          <th>제목</th>
          <th>작성일</th>
          <th>작성자</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${noticeList}" var="notice" varStatus="status">
        <tr>
          <td>${status.count}</td>
          <td><a href="/notice/detail.do?no=${notice.no}">${notice.title}</a></td>
          <td>${notice.resdate}</td>
          <td>${notice.author}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <div class="button-group">
      <c:if test="${sid eq 'admin'}">
      <a href="${path1}/notice/insert.do">작성하기</a>
      </c:if>
    </div>
  </div>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
