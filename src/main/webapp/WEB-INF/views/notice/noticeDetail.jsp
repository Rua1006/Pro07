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
    <title>공지사항</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<%-- 네비게이션 --%>
<jsp:include page="../include/header.jsp"></jsp:include>
<%-- 테이블 메인 --%>
<div class="content row column text-center" >
    <h2>공지사항</h2>
    <div class="bd_wrap">
        <table>
            <tbody>
                <tr>
                    <th>글 번호</th>
                    <td>${noti.no}</td>
                </tr>
                <tr>
                    <th>글 제목</th>
                    <td>${noti.title}</td>
                </tr>
                <tr>
                    <th>글 내용</th>
                    <td>${noti.content}</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>${noti.author}</td>
                </tr>
                <tr>
                    <th>작성일</th>
                    <td>${noti.resdate}</td>
                </tr>
            </tbody>
        </table>
        <div class="button-group">
            <c:if test="${sid eq 'admin'}">
                <a href="${path1}/notice/update.do?no=${noti.no}" class="button">글 수정</a>
                <a href="${path1}/notice/delete.do?no=${noti.no}" class="button">글 삭제</a>
            </c:if>
            <a href="${path1}/notice/list.do" class="button">글 목록</a>
        </div>
    </div>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>