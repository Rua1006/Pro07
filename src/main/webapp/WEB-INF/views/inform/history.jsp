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
    <title>연혁</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
        .content {width: 1200px; margin: 0 auto;}

        .history_tit {text-align: center; margin-top: 100px; margin-bottom: 30px;}
        .tabs {text-align: center; margin: 0 auto;}
        .history_year {text-align: center; font-size: 35px;}
        .content_sub_title {border-left: 5px solid red; padding-left: 10px; margin-left: 120px; margin-bottom: 50px; font-size: 30px;}
        .content_o {display: flex; justify-content: center; margin-bottom: 40px;}
        .content_guide {width: 830px; margin-bottom: 60px;}
        .content_guide_tit {border-left: 5px solid blue; padding-left: 10px;}
        .content_t {display: flex; flex-direction: row; flex-wrap: wrap; justify-content: center;}
        .content_sub_year {border-left: 5px solid red; padding-left: 10px; width: 100px; margin: 0; height: 35px;}
        .content_table > th {width: 200px;}
        .tabs-title > a {font-size: 25px;}
        .vision {border-left: 5px solid red; padding-left: 10px; height: 35px; margin-right: 30px;}

        #panel1 {font-size: 20px;}
        #panel2 {font-size: 20px;}

    </style>
</head>
<body>
<%-- 네비게이션 --%>
<jsp:include page="../include/header.jsp"></jsp:include>
<div content="content" class="content column">
    <h2 class="history_tit">연혁</h2>
    <%-- 탭설정 --%>
    <ul class="tabs" data-tabs id="example-tabs">
        <li class="tabs-title is-active"><a href="#panel1" aria-selected="true">2019~</a></li>
        <li class="tabs-title"><a data-tabs-target="panel2" href="#panel2">2016~2018</a></li>
    </ul>
    <%-- 탭내용 id 동일 조건 --%>
    <div class="tabs-content" data-tabs-content="example-tabs">
        <%-- 1번패널 --%>
        <div class="tabs-panel is-active" id="panel1">
            <h4 class="history_year">2017</h4>
            <div class="content_sub_title">
                <b>식품의약품안전처</b>
                <span>SINCE 2013~</span>
            </div>
            <div class="content_o">
                <h4 class="vision">비전</h4>
                <div class="content_guide">
                    <div class="content_wrap">
                        <h5 class="content_guide_tit">설립목적</h5>
                        <div class="content_wrap_comment">
                            <strong>
                                <span class="content_wrap_comment_b">식품의약품</span>의
                                <span class="content_wrap_comment_b">안전관리체계</span>를 구축·운영하여
                                국민이 <span class="content_wrap_comment_b">안전</span>하고
                                <span class="content_wrap_comment_b">건강한 삶을 영위</span>할 수 있도록 하고자 설립하였습니다.
                            </strong>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content_t">
                <h4 class="content_sub_year">2021</h4>
                <div class="content_guide">
                    <div class="content_wrap">
                        <h5 class="content_guide_tit">30차</h5>
                        <div class="content_table">
                            <table>
                                <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제31489호(‘21.2.25.), 총리령 제1679호(‘21.2.26.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>’21년도 소요정원(1과, +19명) 반영
                                            혁신진단기기정책과 신설, 신종감염병백신검정과 신설
                                            명칭 변경(수입식품분석과 → 식품기준분석과)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>(기준)1,998명, (운영)2,006명</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="content_wrap">
                        <h5 class="content_guide_tit">29차</h5>
                        <div class="content_table">
                            <table>
                                <tbody>
                                <tr>
                                    <th>개정일자</th>
                                    <td><strong>대통령령 제31380호(‘21.1.5.)</strong></td>
                                </tr>
                                <tr>
                                    <th>주요내용</th>
                                    <td>어려운 법령용어 정비</td>
                                </tr>
                                <tr>
                                    <th>정원</th>
                                    <td>(기준)1,956명, (운영)1,964명</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="content_t">
                    <h4 class="content_sub_year">2020</h4>
                    <div class="content_guide">
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">28차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제31305호(‘20.12.29), 총리령제1660호(‘20.12.31)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>부서명칭 변경
                                            축산물안전과 → 축산물안전정책과, 농수산물안전과 → 농수산물안전정책과
                                            약사법 및 의료기기법 개정·시행에 따른 수행업무 추가
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>(기준)1,956명, (운영)1,964명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">27차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제30965호(‘20.8.25), 총리령 제1640호(‘20.8.31)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>조직개편
                                            국별 조직운영 효율성 확보를 위한 조직개편
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>(기준)1,956명, (운영)1,964명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">26차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제30623호(20.4.21.). 총리령 제1613호(20.5.8.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>설기구 성과평가 결과 반영
                                            통합식품정보서비스과 정규조직
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>(기준)1,938명, (운영)1,946명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">25차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제30462호(20.2.25.). 총리령 제1598호(20.2.27.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>’20년도 소요정원 반영 (1과, 1검사소, 48명 증원)
                                            위생용품정책과, 천안수입식품검사소 신설
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>(기준)1,938명, (운영)1,946명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content_t">
                    <h4 class="content_sub_year">2019</h4>
                    <div class="content_guide">
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">24차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제30282호(19.12.31.). 총리령1582호(20.1.9.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            “식품안전관리 분야”를 전문직공무원으로 지정(8명)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>(기준)1,890명, (운영)1,898명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">23차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제29743호(19.5.7.). 총리령 제1538호(19.5.15.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            마약안전기획관 신설
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>(기준)1,890명, (운영)1,898명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">22차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제29583호(19.2.26.). 총리령 제1527호(19.3.4.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            ’19년도 소요정원 반영 (31명 증원)
                                            신설기구 성과평가 결과 반영
                                            바이오심사조정과 정규조직 전환
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>(기준)1,889명, (운영)1,897명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%-- 2번패널 --%>
        <div class="tabs-panel" id="panel2">
            <h4 class="history_year">2016</h4>
            <div class="content_sub_title">
                <b>식품의약품안전처</b>
                <span>SINCE 2013~</span>
            </div>
            <div class="content_o">
                <h4 class="vision">비전</h4>
                <div class="content_guide">
                    <div class="content_wrap">
                        <h5 class="content_guide_tit">설립목적</h5>
                        <div class="content_wrap_comment">
                            <strong>
                                <span class="content_wrap_comment_b">식품의약품</span>의
                                <span class="content_wrap_comment_b">안전관리체계</span>를 구축·운영하여
                                국민이 <span class="content_wrap_comment_b">안전</span>하고
                                <span class="content_wrap_comment_b">건강한 삶을 영위</span>할 수 있도록 하고자 설립하였습니다.
                            </strong>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content_t">
                <h4 class="content_sub_year">2018</h4>
                <div class="content_guide">
                    <div class="content_wrap">
                        <h5 class="content_guide_tit">21차</h5>
                        <div class="content_table">
                            <table>
                                <tbody>
                                <tr>
                                    <th>개정일자</th>
                                    <td><strong>대통령령 제29244호(18.10.23.). 총리령 제1507호(18.12.11.)</strong></td>
                                </tr>
                                <tr>
                                    <th>주요내용</th>
                                    <td>
                                        인력 재배치 ( ‘의약품 품목갱신’ 업무 지방청 이관, 특사경 업무 지방청 운영지원과로 통합)
                                    </td>
                                </tr>
                                <tr>
                                    <th>정원</th>
                                    <td>(기준)1,858명, (운영)1,866명</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="content_wrap">
                        <h5 class="content_guide_tit">20차</h5>
                        <div class="content_table">
                            <table>
                                <tbody>
                                <tr>
                                    <th>개정일자</th>
                                    <td><strong>총리령 제1475호(18.7.9.)</strong></td>
                                </tr>
                                <tr>
                                    <th>주요내용</th>
                                    <td>국·과장급 개방형 직위 조정</td>
                                </tr>
                                <tr>
                                    <th>정원</th>
                                    <td>(기준)1,858명, (운영)1,866명</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="content_wrap">
                        <h5 class="content_guide_tit">19차</h5>
                        <div class="content_table">
                            <table>
                                <tbody>
                                <tr>
                                    <th>개정일자</th>
                                    <td><strong>대통령령 제28752호(18.3.30.). 총리령 제1452호(18.3.30.)</strong></td>
                                </tr>
                                <tr>
                                    <th>주요내용</th>
                                    <td>
                                        ’18년도 소요정원 반영 (1검사소, 61명 증원)
                                        김포수입식품검사소 신설
                                    </td>
                                </tr>
                                <tr>
                                    <th>정원</th>
                                    <td>(기준)1,858명, (운영)1,866명</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="content_wrap">
                        <h5 class="content_guide_tit">18차</h5>
                        <div class="content_table">
                            <table>
                                <tbody>
                                <tr>
                                    <th>개정일자</th>
                                    <td><strong>총리령 제1430호(18.1.1.)</strong></td>
                                </tr>
                                <tr>
                                    <th>주요내용</th>
                                    <td>
                                        총액인건비제 시행에 따른 운영정원표 신설
                                        일반임기제 8명 증원(6급, 8명)
                                    </td>
                                </tr>
                                <tr>
                                    <th>정원</th>
                                    <td>(기준)1,797명, (운영)1,805명</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="content_t">
                    <h4 class="content_sub_year">2017</h4>
                    <div class="content_guide">
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">17차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>총리령 제1419호(17.9.28.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            기구 명칭 변경(창조행정담당관→혁신행정담당관)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>1,797명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">16차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제28021호(17.5.8.). 총리령 제1397호(17.5.26.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            의약품안전평가과 정규조직 전환
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>1,797명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">15차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제27942호(17.3.20.). 총리령제1383호(17.3.21.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>수입식품 안전 및 식품 안전관리의 효율성 제고를 위한 조직 개편
                                            식품영양안전국을 식품소비안전국으로 개편
                                            농축수산물안전국을 수입식품안전정책국으로 개편
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>1,797명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">14차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제27891호(17.2.28.). 총리령제1360호(17.2.28.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            ’17년도 소요정원 반영(3과(주류안전정책과, 마약관리과,바이오심사조정과) 38명)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>1,797명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content_t">
                    <h4 class="content_sub_year">2016</h4>
                    <div class="content_guide">
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">13차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제27689호(16.12.27.). 총리령제1360호(17.01.26.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            ’16년도 통합정원 감축 △15명(본부5명, 평가원 4명, 지방청 6명)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>1,759명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">12차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제27143호(16.5.10.), 총리령제1308호(16.7.29.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            국장급 개방형직위 조정(의약품안전국장 지정, 식품기준기획관 제외)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>1,774명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">11차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제27143호(16.5.10.), 총리령제1255호(16.5.19.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            ’16년도 소요정원 반영(1과(통합식품정보서비스과), 12명)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>1,774명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <h5 class="content_guide_tit">10차</h5>
                            <div class="content_table">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>개정일자</th>
                                        <td><strong>대통령령 제26790호(15.12.30.), 총리령제1255호(16.2.05.)</strong></td>
                                    </tr>
                                    <tr>
                                        <th>주요내용</th>
                                        <td>
                                            ’16년도 소요정원 직급조정(±15명) 반영
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>정원</th>
                                        <td>1,762명</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%-- 하단푸터 --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
