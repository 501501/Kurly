<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓 컬리">
    <meta name="description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!">
    <meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리">
    <meta property="og:description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!">
    <meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg">
    <meta property="og:url" content="https://www.kurly.com/shop/main/index.php?">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="www.kurly.com">
    <meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식">
    <title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/board/notice.css">
    <link rel="stylesheet" href="../resources/css/board/notice2.css">
    <script src="../resources/js/jquery-3.4.1.js"></script>
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
                                    <a href="#none"
                                        onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_service_personal_inquiry_history')">1:1
                                        문의</a>
                                </li>
                                <li>
                                    <a href="#none"
                                        onclick="KurlyTrackerLink('/shop/main/html.php?htmid=mypage/bulk_order.htm', 'select_service_bulk_order')">대량주문
                                        문의</a>
                                </li>
                                <li>
                                    <a href="#none"
                                        onclick="KurlyTrackerLink('/shop/mypage/offer.php', 'select_service_product_offer')">상품
                                        제안</a>
                                </li>
                                <li>
                                    <a href="#none"
                                        onclick="KurlyTrackerLink('/shop/mypage/echo_packing.php', 'select_service_eco_packing_feedback')">에코포장
                                        피드백</a>
                                </li>
                            </ul>
                        </div>
                        <a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span
                                class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
                    </div>
                    <div class="page_section">
                        <div class="head_aticle">
                            <h2 class="tit">공지사항 <span class="tit_sub">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span></h2>
                        </div>
                        <form id="frm" name="frmList" action="./list" method="get" onsubmit="return chkFormList(this)">
                            <input type="hidden" name="id" value="notice">
                            <style>
                                .notice .layout-pagination {
                                    margin: 0
                                }

                                .eng2 {
                                    color: #939393
                                }

                                .xans-board-listheader {
                                    font-size: 12px
                                }
                            </style>
                            <table width="100%" style="text-align: center;" cellpadding="0" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="xans-element- xans-myshop xans-myshop-couponserial ">
                                                <table width="100%" class="xans-board-listheader jh" cellpadding="0"
                                                    cellspacing="0">
                                                    <thead>
                                                        <tr>
                                                            <th>번호</th>
                                                            <th>제목</th>
                                                            <th>작성자</th>
                                                            <th>작성일</th>
                                                            <th>조회</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
														<c:forEach items="${list}" var="dto">
															<tr>
																<td width="50" nowrap="" style="text-align: center;">${dto.num}</td>
																<td style="padding-left:10px; text-align:left; color:#999"><a href="./view?num=${dto.num}">${dto.title}</a></td>
																<td width="100" nowrap="" style="text-align: center;">${dto.writer}</td>
																<td width="100" nowrap="" style="text-align: center;" class="eng2">${dto.regDate}</td>
																<td width="30" nowrap="" style="text-align: center;" class="eng2">${dto.hits}</td>
															</tr>
														</c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
							<div class="layout-pagination">
								<div class="pagediv">
									<a href="./list?kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
									<a href="./list?pn=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
									<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
										<a href="./list?pn=${n}&kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-number">${n}</a>
									</c:forEach>
									<a href="./list?pn=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
									<a href="./list?pn=${pager.totalPage}&kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
								</div>
							</div>
							<table class="xans-board-search xans-board-search2">
                                <tbody>
                                    <tr>
                                        <td class="input_txt">
                                        	<img src="../resources/img/board/ico_function.gif">검색어</td>
                                        <td class="stxt">
                                            <input type="checkbox" value="name" name="kind">이름
                                            <input type="checkbox" value="title" name="kind">제목
                                            <input type="checkbox" value="contents" name="kind">내용&nbsp;
                                        </td>
                                        <td class="input_txt">&nbsp;</td>
                                        <td>
                                            <div class="search_bt">
                                                <a href="javascript:document.frmList.submit()">
                                                	<img src="../resources/img/board/search.webp" text-align="absmiddle" id="btn_click">
                                                </a>
                                                <input type="text" name="search" value="" required="">
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>
    
    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>
    <c:import url="../temp/footer.jsp"></c:import>
    <script type="text/javascript">
    	$("#btn_click").click(function(){
    		$("#frm").submit();
    	})
    </script>
</body>
</html>