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
  <title>회원정보</title>
  <jsp:include page="../include/head.jsp"></jsp:include>
  <style>
    .content {width: 900px; margin: 0 auto; display: flex; flex-wrap: wrap; justify-content: center; padding: 50px; text-align: center; flex-direction: column;}

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
    <li>
      <span class="show-for-sr">Current: </span> 마이페이지
    </li>
  </ul>
</nav>
<div class="content">
  <div class="column text-center">
    <c:if test="${sid=='admin'}">
      <h2>회원 정보 수정</h2>
    </c:if>
    <c:if test="${sid!='admin'}">
      <h2>마이 페이지</h2>
    </c:if>
    <form action="${path1}/users/update.do" method="post" onsubmit="return updateCheck(this)">
      <div class="table_form_wrap">
        <table class="table_form">
          <tbody>
            <tr>
              <th><label for="id">아이디</label></th>
              <td>
                <input type="text" name="id" id="id" value="${users.id}" readonly required>
              </td>
            </tr>
            <tr>
              <th><label for="pw">비밀번호</label></th>
              <td>
                <input type="password" name="pw" id="pw" placeholder="비밀번호 수정시 입력" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
                <b style="color: darkred; font-size: 12px;">*(비밀번호 수정 시 최소 8자리에서 최대 16자리까지, 숫자, 영문 대소문자, 특수문자가 각 1문자 이상 포함되어야 합니다.)</b>
              </td>
            </tr>
            <tr>
              <th><label for="pw2">비밀번호 확인</label></th>
              <td>
                <input type="password" name="pw2" id="pw2" placeholder="비밀번호 수정 재확인" required>
              </td>
            </tr>
            <tr>
              <th><label for="name">이름</label></th>
              <td>
                <input type="text" name="name" id="name" value="${users.name}" required>
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <input type="submit" class="button btn-writer" value="회원정보수정">
                <input type="reset" class="button btn-primary" value="입력정보초기화">
                <c:if test="${sid=='admin'}">
                  <a href="${path1}/users/delete.do?id=${users.id}" class="button btn-primary">회원 강퇴</a>
                  <a href="${path1}/users/list.do" class="button btn-primary">회원 목록</a>
                </c:if>
                <c:if test="${sid!='admin'}">
                  <a href="${path1}/users/delete.do?id=${sid}" class="button btn-primary">회원 탈퇴</a>
                  <a href="${path1}/" class="button btn-primary">메인 페이지</a>
                </c:if>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </form>
  </div>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
