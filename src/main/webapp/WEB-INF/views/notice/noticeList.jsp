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
  <title>Home</title>
  <jsp:include page="${path1}include/head.jsp"></jsp:include>
</head>
<body>
<%-- 네비게이션 --%>
<jsp:include page="${path1}include/header.jsp"></jsp:include>
<%-- 테이블 메인 --%>
<div class="content row column text-center" >
  <h2>공지사항 목록</h2>
  <div class="bd_wrap">
    <table>
      <thead>
        <tr>
          <th>No</th>
          <th>No</th>
          <th>No</th>
          <th>No</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${noticeList}" var="notice" varStatus="status">
        <tr>
          <td>${status.count}</td>
          <td><a href="/notice/detail.do?no=${notice.no}">${notice.title}</a></td>
          <td>${notice.resdate}</td>
          <td>${notice.visited}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <div calss="button-group">
      <a href="${path1}/notice/insert.do">작성하기</a>
    </div>
  </div>
</div>
<%-- 하단푸터 --%>
<jsp:include page="${path1}include/footer.jsp"></jsp:include>
</body>
</html>
