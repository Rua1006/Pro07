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
  <title>공지사항 작성하기</title>
  <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<%-- 네비게이션 --%>
<jsp:include page="../include/header.jsp"></jsp:include>
<div class="content row column text-center">
  <h2>공지사항 작성</h2>
  <form action="${path1}/notice/insert.do" method="post">
    <table>
      <tbody>
        <tr>
          <th>제목</th>
          <td>
            <input type="text" placeholder="제목입력" maxlength="100" id="title" name="title" required>
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <textarea name="content" id="content" cols="30" rows="10" maxlength="300" required></textarea>
          </td>
        </tr>
        <tr>
          <th>작성자</th>
          <td>
            <input type="text" placeholder="관리자" readonly>
          </td>
        </tr>
      </tbody>
    </table>
    <div class="button-group">
      <input type="submit" class="submit success button" value="등록">
      <a href="${path1}/notice/list.do" class="button">목록</a>
    </div>
  </form>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
