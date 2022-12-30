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
    <title>회원가입</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
    <%-- 네비게이션 --%>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div content="content">
        <div class="row column text-center">
            <h2>회원가입</h2>
            <div class="container">
                <form action="${path1}/users/insert.do" method="post" onsubmit="return joinCheck(this)">
                    <table id="table">
                        <tbody>
                            <tr>
                                <th>아이디</th>
                                <td>
                                    <input type="text" name="id" id="id" placeholder="아이디 입력" pattern="^[a-z0-9]{5,12}" maxlength="12">
                                    <input type="button" id="idCkBtn" class="button" value="아이디 중복 체크" onclick="idCheck()">
                                    <input type="hidden" name="idck" id="idck" value="no"/>
                                    <c:if test="${empty qid}">
                                        <p id="msg" style="padding-left: 0.5rem">아직 아이디 중복 체크를 하지 않으셨습니다.</p>
                                    </c:if>
                                    <c:if test="${not empty qid}">
                                        <p id="msg" style="padding-left: 0.5rem">아이디 중복 체크가 완료되었습니다.</p>
                                    </c:if>
                                </td>
                            </tr>
                            <tr>
                                <th>비밀번호</th>
                                <td>
                                    <input type="password" name="pw" id="pw" placeholder="비밀번호 입력" maxlength="12" required>
                                </td>
                            </tr>
                            <tr>
                                <th>비밀번호 확인</th>
                                <td>
                                    <input type="password" name="pw2" id="pw2" placeholder="비밀번호 확인 입력" maxlength="12" required>
                                </td>
                            </tr>
                            <tr>
                                <th>이름</th>
                                <td>
                                    <input type="text" name="name" id="name" placeholder="이름 입력" required>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" class="submit success button" value="회원 가입">
                                    <input type="reset" class="reset button" value="취소">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <script>
                $(document).ready(function (){
                   $("#id").keyup(function (){
                      $("#idck").val("no");
                      if($(this).val()!=""){
                          $("#msg").html("<strong>아이디 입력중입니다.</strong>");
                      }else{
                          $("#msg").html("아이디 중복 체크를 진행해주시길 바랍니다.");
                      }
                   });
                });
                </script>
                <script>
                function idCheck(){
                    if($("#id").val()==""){
                        alert("아이디 입력을 하지 않았습니다.");
                        $("#id").focus();
                        return;
                    }
                    var params = {id : $("#id").val()}
                    $.ajax({
                        url:"${path1}/users/idCheck.do",
                        type:"post",
                        dataType:"json",
                        data:params,
                        success:function (result){
                            console.log(result.result);
                            var idChk = result.result;
                            if(idChk==false){
                                $("#idck").val("no");
                                $("#msg").html("<strong style='color: red'>중복된 아이디 입니다.</strong>");
                                $("#id").focus();
                            } else if(idChk==true) {
                                $("#idck").val("yes");
                                $("#msg").html("<strong style='color: blue'>사용가능한 아이디 입니다.</strong>");
                            } else if(idck==""){
                                $("#msg").html("<strong>아이디가 확인되지 않았습니다. 다시 시도해주시길 바랍니다.</strong>");
                            }
                        }
                    });
                }
                function joinCheck(f){
                    if(f.pw.value!=f.pw2.value){
                        alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                        f.pw.focus();
                        return false;
                    }
                    if(f.idck.value!="yes"){
                        alert("아이디 중복 체크를 하지 않았습니다.");
                        return false;
                    }
                }
                </script>
            </div>
        </div>
    </div>
    <%-- 하단푸터 --%>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
