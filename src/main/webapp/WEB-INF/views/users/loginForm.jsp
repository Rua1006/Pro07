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
  <title>로그인</title>
  <jsp:include page="../include/head.jsp"></jsp:include>
  <style>
    .login_tit {padding-top: 100px;}
    .content {height: 750px; background-image: url("${path1}/resources/img/main/main_bg_02.jpg");}
    .table_form_wrap {display: flex; flex-wrap: wrap; width: 500px; margin: 0 auto;}
    .button {margin-right: 20px;}

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
        <span class="show-for-sr">Current: </span> 로그인
      </li>
    </ul>
  </nav>
  <div class="content">
    <div class="colum text-center">
      <h2 class="login_tit">로그인</h2>
      <div class="container">
        <c:if test="${!empty msg}">
          <script>
            alert("로그인이 정상적으로 처리되지 못하였습니다.")
            document.loginForm.id.focus();
          </script>
        </c:if>
        <form action="${path1}/users/signin.do" method="post" name="loginForm">
          <div class="table_form_wrap">
            <tbody>
              <tr>
                <th>
                  <label for="id"><strong>아이디</strong></label>
                </th>
                <td>
                  <input type="text" name="id" id="id" placeholder="아이디 입력" required>
                </td>
              </tr>
              <tr>
                <th>
                  <th>
                    <label for="pw"><strong>비밀번호</strong></label>
                  </th>
                  <td>
                    <input type="password" name="pw" id="pw" placeholder="비밀번호 입력" required>
                  </td>
                </th>
              </tr>
              <tr>
                <td colspan="2">
                  <input type="submit" class="button" value="로그인">
                  <input type="reset" class="button" value="입력정보 초기화">
                </td>
              </tr>
            </tbody>
          </div>
        </form>
        <script>
          function loginFaiure() {
            alert("로그인 실패");
          }
        </script>
      </div>
    </div>
  </div>
  <%-- 하단 푸터 --%>
  <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
