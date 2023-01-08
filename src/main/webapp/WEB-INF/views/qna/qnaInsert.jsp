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
  <title>국민제안</title>
  <jsp:include page="../include/head.jsp"></jsp:include>
  <style>
    input {margin: 0;}

    .content {height: 900px;}
    .notiInsert_tit {padding-top: 50px;}
    .insertForm {width: 1000px; margin: 0 auto;}
    .button-group {flex-direction: row-reverse;}
    .button {border-radius: 10px; width: 100px; height: 50px;}
    .list_go {text-align: center; padding: 17px; margin-right: 10px;}
  </style>
</head>
<body>
<%-- 네비게이션 --%>
<jsp:include page="../include/header.jsp"></jsp:include>
<div class="content column text-center">
  <h2 class="notiInsert_tit">국민제안 작성</h2>
  <form action="${path1}/qna/insert.do" class="insertForm" method="post">
    <table>
      <tbody>
        <tr>
          <th>제목</th>
          <td>
            <input type="text" placeholder="제목입력" name="title" id="title" value="${dto.title}">
            <input type="hidden" name="lev" id="lev" value="${lev}">
            <c:if test="${lev eq '1'}">
              <input type="hidden" name="pos" id="pos" value="${pos}">
            </c:if>
          </td>
        </tr>
        <tr>
          <th>제안내용</th>
          <td>
            <textarea name="content" id="content" cols="30" rows="10" maxlength="300" required></textarea>
          </td>
        </tr>
        <tr>
          <th>작성자</th>
          <td>
            <input type="text" placeholder="작성자명" name="author" id="author" value="${sid}">
          </td>
        </tr>
      </tbody>
    </table>
    <div class="button-group">
      <input type="submit" class="submit success button" value="등록">
      <a href="${path1}/qna/list.do" class="button list_go">목록</a>
    </div>
  </form>

</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
