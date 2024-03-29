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
  <title>공지사항 수정하기</title>
  <jsp:include page="../include/head.jsp"></jsp:include>
  <style>
    .content {width: 1500px; margin: 0 auto;}

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
    <li><a href="${path1}/notice/list.do">알림</a></li>
    <li class="disabled">공지/공고</li>
    <li>
      <span class="show-for-sr">Current: </span> 공지사항 수정
    </li>
  </ul>
</nav>
<div class="content row column text-center">
  <h2>공지사항 수정</h2>
  <form action="${path1}/notice/update.do" method="post" name="edit" id="edit">
    <table>
      <tbody>
      <tr>
        <th>제목</th>
        <td>
          <input type="hidden" id="no" name="no" value="${noti.no}">
          <input type="text" placeholder="제목입력" maxlength="100" id="title" name="title" value="${noti.title}" required>
        </td>
      </tr>
      <tr>
        <th>내용</th>
        <td>
          <textarea name="content" id="content" cols="30" rows="10" maxlength="300" required>${noti.content}</textarea>
        </td>
      </tr>
      </tbody>
    </table>
    <div class="button-group">
      <input type="submit" class="submit success button" value="수정">
      <a href="${path1}/notice/list.do" class="button">목록</a>
    </div>
  </form>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
