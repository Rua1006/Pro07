<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<style>
  li {list-style: none;}

  .row {display: flex; flex-wrap: wrap; justify-content: center; padding: 50px; text-align: center;}
  .callout {margin: 0;}
  .bottom_main {margin: 0 auto;}
  .bottom_list {display: flex; flex-wrap: wrap; margin-top: 20px; padding: 5px;}
  .bottom_li {margin-right: 20px;}
  .button_go {border-radius: 5px; margin-right: 20px; margin-left: 5px;}
  .footer_site_selectbox {width: 210px;}
  .service_agree {display: flex; justify-content: space-between; border-top: rgba(25, 39, 112, 0.16) 0.01em solid;}
  .footer_form {display: flex; margin-top: 20px;}
</style>
<footer>
  <div class="service_agree">
    <ul class="bottom_list">
      <li><a href="#" class="bottom_li">개인정보처리방침</a></li>
      <li><a href="#" class="bottom_li">저작권정책</a></li>
      <li><a href="#" class="bottom_li">부서별전화번호</a></li>
      <li><a href="#" class="bottom_li">최신 정보 자료 제공 서비스 / 맞춤형 구독 정보 서비스</a></li>
    </ul>
    <div class="footer_sitelink_guide">
      <div class="footer_sitelink">
        <form class="footer_form" action="#none" method="get">
          <div class="footer_site_selectbox">
            <select title="산하기관 누리집 선택하세요!">
              <option value="">산하기관누리집</option>
              <option value="http://www.haccp.or.kr">한국식품안전관리인증원</option>
              <option value="http://www.foodinfo.or.kr">식품안전정보원</option>
              <option value="http://www.drugsafe.or.kr">한국의약품안전관리원</option>
              <option value="http://www.nids.or.kr">한국의료기기안전정보원</option>
              <option value="http://www.kodc.or.kr">한국희귀필수의약품센터</option>
              <option value="http://www.drugfree.or.kr">한국마약퇴치운동본부</option>
              <option value="https://www.k-vcast.kr">백신안전기술지원센터</option>
            </select>
          </div>
          <input type="submit" class="button button_go" value="이동" title="새창열림">
        </form>
      </div>
    </div>
  </div>
  <div class="callout large secondary">
    <div class="row">
      <div class="footer_logo">
        <a href="${path1}/"><img src="${path1}/resources/img/main/logo_bottom.png" alt="logo_bottom" class="logo_bottom"></a>
      </div>
      <div class="large-4 columns bottom_main">
        <h5 class="footer_tit">(우) 28159 충청북도 청주시 흥덕구 오송읍 오송생명2로 187 오송보건의료행정타운 식품의약품안전처</h5>
        <p class="footer_content">식품의약품안전처 종합상담실 1577-1255(9:00~18:00, 공휴일 제외) / 정부민원안내콜센터 국번없이 110(무료)</p>
      </div>
    </div>
  </div>
</footer>
<script>
  $(document).ready(function(){
    $(document).foundation();
  });
</script>
