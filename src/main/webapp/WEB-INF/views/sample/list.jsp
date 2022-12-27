<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>샘플 목록</title>
</head>
<body>
	<h1>샘플 목록</h1>
	<ul>
		<c:forEach items="${sampleList }" var="sample" varStatus="status">
		<li>
			<span>${status.count } </span>,
			<span><a href="${path1 }/sample/getSample?id=${sample.id }">${sample.id }</a></span>,
			<span>${sample.pw } </span>
		</li>
		</c:forEach>
	</ul>
</body>
</html>