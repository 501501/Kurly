<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
    <link rel="stylesheet" href="../resources/css/board/faq.css">
    <link rel="stylesheet" href="../resources/css/board/faq2.css">
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
                    <form name="frmList" id="form" action="./faq" method="get">
                        <div class="page_section">
                            <div class="head_aticle">
                                <h2 class="tit">자주하는 질문 <span class="tit_sub">고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</span></h2>
                            </div>
                            <div class="search_date">
                            	<select name="kind" id="sel" class="btn_layer">
                            		<option value="k0"
										<c:if test="${param.kind eq 'k0'}">
											selected="selected"
										</c:if>>선택
									</option>
										
									<option value="k1"
										<c:if test="${param.kind eq 'k1'}">
											selected="selected"
										</c:if>>회원문의
									</option>
										
									<option value="k2"
										<c:if test="${param.kind eq 'k2'}">
											selected="selected"
										</c:if>>주문/결제
									</option>
										
									<option value="k3"
										<c:if test="${param.kind eq 'k3'}">
											selected="selected"
										</c:if>>취소/교환/반품
									</option>
										
									<option value="k4"
										<c:if test="${param.kind eq 'k4'}">
											selected="selected"
										</c:if>>배송문의
									</option>
										
									<option value="k5"
										<c:if test="${param.kind eq 'k5'}">
											selected="selected"
										</c:if>>쿠폰/적립금
									</option>
										
									<option value="k6"
										<c:if test="${param.kind eq 'k6'}">
											selected="selected"
										</c:if>>서비스 이용 및 기타
									</option>
								</select>
                             
                                <input type="hidden" name="sitemcd" value="">
                                <script>
                                    var $targetBtn = $('.search_date .btn_layer');
                                    var $targetLayer = $('.search_date .layer_search');
                                    var $targetSelector = $('.layer_search a');

                                    $targetSelector.each(function () {
                                        if ($(this).data('selected')) {
                                            $targetBtn.text($(this).data('selected'));
                                        }
                                    });
                                    $targetBtn.on('click', function (e) {
                                        e.preventDefault();
                                        $(this).toggleClass('on');
                                        $targetLayer.slideToggle(100);
                                    });
                                    $targetSelector.on('click', function (e) {
                                        e.preventDefault();
                                        var value = $(this).data('value');
                                        var text = $(this).text();
                                        $targetBtn.trigger('click').text(text);
                                        $('[name=sitemcd]').val(value);
                                        $('[name=frmList]').submit();
                                    });
                                </script>
                            </div>

                            <div class="xans-element- xans-myshop xans-myshop-couponserial ">
                                <table width="100%" class="xans-board-listheader">
                                    <tbody>
                                        <tr>
                                            <th width="70" class="input_txt">번호</th>
                                            <th width="135" class="input_txt">카테고리</th>
                                            <th class="input_txt">제목</th>
                                        </tr>
                                    </tbody>
                                </table>
                                <div>
                                    <div>
                                    	<c:forEach items="${faq}" var="dto">
                                        <table width="100%" class="table_faq">
                                            <tbody>
                                                <tr>
                                                    <td width="70" style="text-align: center";>${dto.num}</td>
                                                    <td width="135" style="text-align: center";>${dto.category}</td>
                                                    <td style="cursor:pointer"><span class="title" data-faq-num="${dto.num}">${dto.title}</span></td>
                                                </tr>
                                                <tr hidden="hidden" id="selectResult${dto.num}"></tr>
                                            </tbody>
                                        </table>
                                        </c:forEach>
                                      </div> 
                                </div>
                                
                                <div style="padding:1px; border-top:1px solid #e6e6e6"></div>
                                <div class="layout-pagination">
                                    <div class="pagediv">
                                    	<a href="./faq?kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
                                    	<a href="./faq?pn=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
                                    	
                                    	<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
												<a href="./faq?pn=${n}&kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-number">${n}</a>
										</c:forEach>
                                        <a href="./faq?pn=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
                                        <a href="./faq?pn=${pager.totalPage}&kind=${pager.kind}&search=${pager.search}" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
                                    </div>
                                </div>
                                <table class="xans-board-search xans-board-search2">
                                    <tbody>
                                        <tr>
                                            <td class="input_txt">&nbsp;</td>
                                            <td>
                                                <div class="search_bt">
                                                    <input type="image" id="btn_search" src="../resources/img/board/search.webp" style="text-align: absmiddle;">
                                                    <input type="text" name="search">
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </form>
                </div>
                <script>
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
                        } else if (preContent && obj == preContent) preContent.style.display = (preContent.style
                            .display == "none" ? "block" : "none");
                        else if (preContent == null) obj.style.display = "block";

                        preContent = obj;
                    }

                    { // 초기출력
                        var no = "faq_";
                        if (document.getElementById(no)) view_content(document.getElementById(no));
                    }

                    // KM-1483 Amplitude 연동
                    KurlyTracker.setScreenName('frequently_ask_question')
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
	<script type="text/javascript" src="../resources/js/faq.js"></script>
	<script type="text/javascript">
		$("#btn_search").click(function(){
			$("#form").submit();
		});
		let option1 = ($("#sel").val());

		$("#sel").click(function(){
			let option2 = ($("#sel").val());			
			if (option1 != option2) {
				$("#form").submit();
			}
		});
	</script>
</body>
</html>