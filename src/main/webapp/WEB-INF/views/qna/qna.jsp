<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓컬리">
    <meta name="description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!">
    <meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리">
    <meta property="og:description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!">
    <meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg">
    <meta property="og:url" content="https://www.kurly.com/shop/main/index.php?">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="www.kurly.com">
    <meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식">
    <title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/11.css">
    <link rel="stylesheet" href="../resources/css/11_2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="../resources/js/jquery-3.4.1.js" type="text/javascript" text="javascript"></script>
    <script src="../resources/js/add.js"></script>
    <c:import url="../temp/header.jsp"></c:import>
</head>
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("/header.html");
        </script>
    </header>

    <section>

        <div id="main">
            <div id="content">
               
                <div class="page_aticle aticle_type2">
                    <div id="snb" class="snb_cc">
                        <h2 class="tit_snb">고객센터</h2>
                        <div class="inner_snb">
                            <ul class="list_menu">
                                <li class="on">
                                    <a href="/kurly/board/list">공지사항</a>
                                </li>
                                <li>
                                    <a href="/kurly/service/faq">자주하는 질문</a>
                                </li>
                                <li>
                                    <a href="/kurly/mypage/mypage_qna">1:1 문의</a>
                                </li>
                                <li>
                                    <a href="/kurly/mypage/bulk_order">대량주문 문의</a>
                                </li>
                                <li>
                                    <a href="/kurly/mypage/offer">상품 제안</a>
                                </li>
                                <li>
                                    <a href="/kurly/mypage/echo_packing">에코포장 피드백</a>
                                </li>
                            </ul>
                        </div>
                        <a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span
                                class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
                    </div>
                    <div class="page_section section_qna">
                        <div class="head_aticle">
                            <h2 class="tit">1:1 문의</h2>
                        </div>
                        
						<c:set var="rownum" value="${fn:length(list)}"></c:set>
                        <table class="xans-board-listheader" width="100%">

							<tbody>
								<tr class="input_txt">
									<th width="8%">번호</th>
									<th width="15%">카테고리</th>
									<th>제목</th>
									<th width="12%">작성자</th>
									<th width="12%">작성일</th>
								</tr>
							</tbody>
							<tbody>
                            	<c:forEach items="${list}" var="dto" begin="0" end="${rownum}" varStatus="r">
                                <tr class="input_txt" class="select" data-list-num="${dto.num}">
                                    <th width="8%">${rownum-r.index}</th>
                                    <th width="15%">${dto.category}</th>
                                    <th>${dto.title}</th>
                                    <th width="12%">${dto.id}</th>
                                    <th width="12%">${dto.regDate}</th>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                       
                       <c:if test="${fn:length(list) eq 0}">
                        <div class="no_data"
                            style="padding:150px 0 148px;border-top:1px solid #e6e6e6;border-bottom:1px solid #e6e6e6;font-size:12px;color:#4c4c4c">
                            1:1 문의 내역이 존재하지 않습니다.
                        </div>
                        </c:if>
                       
                        <div style="position:relative">
                            <div style="position:absolute;right:0;top:60px;">
                                <a href="javascript:popup_register( 'add_qna' );"><span class="bhs_buttonsm yb" id="write_btn"
                                        style="float:none;">글쓰기</span></a>
                            </div>
                        </div>
                        <div class="layout-pagination">
                            <div class="pagediv"></div>
                        </div>

                    </div>
                </div>
                <script type="text/javascript">
                    function popup_register(mode, sno) {
                        // KMF-299 1:1문의 글쓰기 버튼 트래킹
                        if (mode === 'add_qna') {
                            KurlyTracker.setAction('select_my_kurly_add_personal_inquiry').sendData();
                        }

                        if (mode == 'del_qna') var win = window.open("../mypage/mypage_qna_del.php?mode=" + mode +
                            "&sno=" + sno, "qna_register", "width=400,height=200");
                        else parent.location.href = ("../mypage/mypage_qna_register.php?mode=" + mode + "&sno=" + sno);

                    }

                    var preContent;

                    function view_content(obj) {
                        var div = obj.parentNode;

                        for (var i = 1, m = div.childNodes.length; i < m; i++) {
                            if (div.childNodes[i].nodeType != 1) continue; // text node.
                            else if (obj == div.childNodes[i]) continue;

                            obj = div.childNodes[i];
                            break;
                        }

                        if (preContent && obj != preContent) {
                            obj.style.display = "block";
                            preContent.style.display = "none";
                            preCheck = false
                        } else if (preContent && obj == preContent) {
                            preContent.style.display = (preContent.style.display == "none" ? "block" : "none");
                        } else if (preContent == null) {
                            obj.style.display = "block";
                        }

                        preContent = obj;

                        if (preContent.style.display === 'block') {
                            KurlyTracker.setScreenName('personal_inquiry_detail');
                        } else {
                            KurlyTracker.setScreenName('personal_inquiry_history');
                        }
                    }

                    // KM-1483 Amplitude 연동
                    KurlyTracker.setScreenName('personal_inquiry_history');
                </script>
            </div>
        </div>

    </section>

    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>
    <c:import url="../temp/footer.jsp"></c:import>
	<script type="text/javascript" src="../resources/js/qna.js"></script>
</body>
</html>