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
  <title>언론홍보자료</title>
  <jsp:include page="../include/head.jsp"></jsp:include>
  <style>
    .content {height: 900px;}
  </style>
</head>
<body>
<%-- 네비게이션 --%>
<jsp:include page="../include/header.jsp"></jsp:include>
<div class="content column text-center">
  <h2 class="newsDetail_tit">언론홍보자료</h2>
  <div class="bd_wrap">
    <table>
      <tbody>
        <tr>
          <th>글번호</th>
          <td>${news.no}</td>
        </tr>
        <tr>
          <th>글제목</th>
          <td>${news.title}</td>
        </tr>
        <tr>
          <th>글내용</th>
          <td>${news.content}</td>
        </tr>
        <tr>
          <th>작성자</th>
          <td>${news.author}</td>
        </tr>
        <tr>
          <th>작성일</th>
          <td>${news.resdate}</td>
        </tr>
      </tbody>
    </table>
    <div class="button_group">
      <c:if test="${sid eq 'admin'}">
        <a href="${path1}/news/update.do?no=${news.no}" class="button">글 수정</a>
        <a href="${path1}/news/delete.do?no=${news.no}" class="button">글 삭제</a>
      </c:if>
      <a href="${path1}/news/list.do" class="button">글 목록</a>
    </div>
  </div>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
