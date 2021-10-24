<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko">

<head>
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="./resources/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/jq/bxslider-4-4.2.12/dist/jquery.bxslider.css">
    <script src="/jq/jquery-3.4.1.js" type="text/javascript" text="javascript"></script>
    <script src="/jq/bxslider-4-4.2.12/dist/jquery.bxslider.min.js"></script>
    <script src="/jq/bx.js"></script>
    <script src="/jq/index.js" type="text/javascript" text="javascript"></script>
    

</head>

<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>



    <header class="clearfix">

        <div id="top-message" class="bnr_header">
            <a href="#" id="eventLanding">
                지금 가입하고 인기상품 <b>100원</b>에 받아가세요!
                <img src="/img/sub_header/ico_arrow_fff_84x84.webp" class="bnr_arr">
                <div class="bnr_top">
                    <div class="inner_top_close">
                        <button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
                    </div>
                </div>
            </a>

        </div>


        <div class="header_wrap">
            <!-- usermenu 시작 -->
            <div id="topMenu">
                <div class="delivery">
                    <a href="#" onclick="ga('send','event','etc','main_gif_btn_click');" class="bnr_delivery">
                        <img src="/img/usermenu/delivery_210801.webp" alt="샛별, 택배 배송안내" width="121" height="22">
                    </a>
                </div>

                <div id="userMenu">
                    <ul class="list_menu">
                    	
                    	<!-- 로그인 전 -->
                    	<c:if test="${empty member}">
	                        <li class="menu none_sub menu_join">
	                            <a href="./members/join" class="link_menu">회원가입</a>
	                        </li>
	
	                        <li class="menu none_sub menu_login">
	                            <a href="./members/login" class="link_menu">로그인</a>
	                        </li>
                        </c:if>
                        <!-- 로그인 전 -->
                        
                        <!-- 로그인 후 -->
                        <c:if test="${not empty member}">
                        	<li>${member.name}</li>
                        	
                        </c:if>
                        <!-- 로그인 후 -->
                        
                        <li class="menu lst"><a href="#" class="link_menu">고객센터</a>
                            <ul class="sub">
                                <li>
                                    <a href="./board/list" onclick="KurlyTrackerLink('#')">공지사항</a>
                                </li>
                                <li>
                                    <a href="./service/faq" onclick="KurlyTrackerLink('#')">자주하는 질문</a>
                                </li>
                                <li>
                                    <a href="./mypage/mypage_qna" onclick="KurlyTrackerLink('#')">1:1 문의</a>
                                </li>
                                <li>
                                    <a href="./mypage/bulk_order" onclick="KurlyTrackerLink('#')">대량주문 문의</a>
                                </li>
                                <li>
                                    <a href="./mypage/offer" onclick="KurlyTrackerLink('#')">상품 제안</a>
                                </li>
                                <li>
                                    <a href="./mypage/echo_packing" onclick="KurlyTrackerLink('#')">에코포장 피드백</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>


				<%-- <c:if test="${not empty member}">
					<h2>Login에 성공하셨습니다</h2>
					<a href="./members/myInfoCheck" class="btn_myInfo">개인정보수정</a>
					<a href="./mypage/destination/list">배송지 관리</a>
					<a href="./members/logout" class="btn_logout">로그아웃</a>
					<a href="./goods/goods_cart/" class="btn_cart">장바구니</a>
				</c:if>
				
				<c:if test="${empty member}">
					<h2>Login하기 전 Page입니다</h2>
					<a href="./members/login" class="btn_login">로그인</a>
				</c:if> --%>


				<%-- <h1>고객센터</h1>
				<a href="./board/list"><h3>공지사항</h3></a>
				<a href="./service/faq"><h3>자주하는 질문</h3></a>
				<a class="control" data-member-id="${member.id}" data-click-board="qna"><h3>1:1 문의</h3></a>
				<a data-member-id="${member.id}" id="bulk_order"><h3>대량주문 문의</h3></a>
				<a class="control" data-member-id="${member.id}" data-click-board="offer"><h3>상품 제안</h3></a>
				<a class="control" data-member-id="${member.id}" data-click-board="echo"><h3>에코포장 피드백</h3></a> --%>



				<script type="text/javascript" src="./resources/js/home.js"></script>



            </div>
            <!-- usermenu 종료 -->

            <!-- logo 시작 -->
            <div id="logo">
                <h1 class="logo">
                    <a href="#">
                        <img src="/img/logo/logo.svg" alt="로고" />
                    </a>
                </h1>
            </div>
            <!-- logo 종료 -->



            <!-- gnb 시작 -->
            <div id="gnb" class="">
                <h2 class="screen_out">메뉴</h2>
                <div id="gnbMenu" class="gnb_kurly">
                    <div class="inner_gnbkurly">

                        <!-- 메인 카테고리 -->
                        <div class="gnb_main">
                            <ul class="gnb">
                                <li class="menu1">
                                    <a href="#none" class="">
                                        <span class="ico"></span>
                                        <span class="txt">전체 카테고리</span>
                                    </a>
                                </li>
                                <li class="menu2">
                                    <a href="/html/new/new.html" class="link new">
                                        <span class="txt">신상품</span>
                                    </a>
                                </li>
                                <li class="menu3">
                                    <a href="" class="link best">
                                        <span class="txt">베스트</span>
                                    </a>
                                </li>
                                <li class="menu4">
                                    <a href="#" class="link bargain">
                                        <span class="txt">알뜰쇼핑</span>
                                    </a>
                                </li>
                                <li class="lst">
                                    <a href="#" class="link event">
                                        <span class="txt">특가/혜택</span>
                                    </a>
                                </li>
                            </ul>

                            <!-- 검색창 -->
                            <div id="side_search" class="gnb_search">
                                <form>
                                    <input type="text" id="sword" name="sword" value required="required" label="검색어"
                                        placeholder="검색어를 입력해주세요." class="inp_search">
                                    <input type="image" src="/img/gnb/search.jpg" class="btn_search">
                                    <div class="init">
                                        <button type="reset" id="searchInit" class="btn_delete">검색어 삭제하기</button>
                                    </div>
                                </form>
                            </div>

                            <!-- 장바구니 -->
                            <div class="cart_count">
                                <div class="inner_cartcount">
                                    <a href="#" class="btn_cart">
                                        <span class="screen_out">장바구니</span>
                                        <span id="cart_item_count" class="num realtime_cartcount"
                                            style="display: none;"></span>
                                    </a>
                                </div>

                                <div id="addMsgCart" class="msg_cart">
                                    <span class="point"></span>
                                    <div class="inner_msgcart">
                                        <img src="/img/gnb/bg_1_1.webp" alt="" class="thumb">
                                        <p id="msgReaddedItem" class="desc">
                                            <span class="tit"></span>
                                            <span class="txt">
                                                장바구니에 상품을 담았습니다.
                                                <span class="repeat">이미 담으신 상품이 있어 추가되었습니다.</span>
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <!-- 배송지 설정 -->
                            <div class="location_set">
                                <button type="button" class="btn_location on">배송지 설정하기</button>
                                <div class="layer_location">
                                    <div class="no_address">
                                        <span class="emph">배송지를 등록</span>
                                        하고
                                        <br>
                                        구매 가능한 상품을 확인하세요!
                                        <div class="group_button double">
                                            <button type="button" class="btn default login">로그인</button>
                                            <button type="button" class="btn active searchAddress">
                                                <span class="ico"></span>
                                                주소검색
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 전체 카테고리 Depth -->
                        <div class="gnb_sub" style="display: none; width: 219px;">
                            <div class="inner_sub">
                                <ul class="gnb_menu" style="height: auto;">
                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/1.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/1-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">채소</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">친환경</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">고구마·감자·당근</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">시금치·쌈채소·나물</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">브로콜리·파프리카·양배추</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">양파·대파·마늘·배추</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">오이·호박·고추</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">냉동·이색·간편채소</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">콩나물·버섯</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/2.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/2-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">과일·견과·쌀</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">친환경</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">제철과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">국산과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">수입과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">간편과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">냉동·건과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">견과류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">쌀·잡곡</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/3.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/3-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">수산·해산·건어물</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">제철수산</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">생선류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">굴비·반건류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">오징어·낙지·문어</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">새우·게·랍스터</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">해산물·조개류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">수산가공품</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">김·미역·해조류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">건어물·다시팩</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/4.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/4-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">정육·계란</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">국내산 소고기</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">수입산 소고기</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">돼지고기</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">계란류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">닭·오리고기</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">양념육·돈까스</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">양고기</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/5.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/5-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">국·반찬·메인요리</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">국·탕·찌개</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">밀키트·메인요리</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">밑반찬</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">김치·젓갈·장류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">두부·어묵·부침개</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">베이컨·햄·통조림</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/6.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/6-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">샐러드·간편식</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">샐러드·닭가슴살</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">도시락·밥류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">파스타·면류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">떡볶이·튀김·순대</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">피자·핫도그·만두</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">폭립·떡갈비·안주</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">죽·스프·카레</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">선식·시리얼</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/7.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/7-1.png" alt=" 카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">면·양념·오일</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">파스타·면류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">식초·소스·드레싱</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">양념·액젓·장류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">식용유·참기름·오일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">소금·설탕·향신료</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">밀가루·가루·믹스</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/8.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/8-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">생수·음료·우유·커피</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">생수·탄산수</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">음료·주스</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">우유·두유·요거트</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">커피</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">차</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/9.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/9-1.png" alt="카테고리 아이콘" class="ico_on"></span>
                                            <span class="tit">
                                                <span class="txt">간식·과자·떡</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">과자·스낵·쿠키</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">초콜릿·젤리·캔디</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">떡·한과</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">아이스크림</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/10.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/10-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">베이커리·치즈·델리</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">식빵·빵류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">잼·버터·스프레드</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">케이크·파이·디저트</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">치즈</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">델리</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">올리브·피클</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/11.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/11-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">건강식품</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">영양제</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">유산균</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">홍삼·인삼·꿀</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">건강즙·건강음료</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">건강분말·건강환</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">다이어트·이너뷰티</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">유아동</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/12.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/12-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">생활용품·리빙·캠핑</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">휴지·티슈</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">여성·위생용품</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">세제·청소용품</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">화훼·인테리어소품</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">의약외품·마스크</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">생활잡화·문구</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">캠핑용품</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/13.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/13-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">스킨케어·메이크업</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">스킨·미스트·패드</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">에센스·앰플·로션</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">크림·오일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">클렌징</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">마스크팩</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">선케어</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">메이크업</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">맨즈케어</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">뷰티소품·기기</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/14.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/14-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">헤어·바디·구강</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">구강·면도</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">샴푸·컨디셔너</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">트리트먼트·팩</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">헤어에센스·염모</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">바디워시·스크럽</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">바디로션·크림</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">핸드·립·데오</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">헤어·바디소품</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/15.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/15-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">주방용품</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">주방소모품·잡화</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">주방·조리도구</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">냄비·팬·솥</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">보관용기·텀블러</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">식기·테이블웨어</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">컵·잔·커피도구</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/16.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/16-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">가전제품</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">주방가전</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">생활가전</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">계절가전</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">디지털·PC</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">대형·설치가전</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/17.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/17-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">베이비·키즈</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">분유·간편 이유식</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">이유식 재료</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">간식·음식·음료</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">건강식품</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">이유·수유용품</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">기저귀·물티슈</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">세제·위생용품</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">스킨·구강케어</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">완구·잡화류</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/18.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/18-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">반려동물</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub"><span class="name">강아지 간식</span></a>
                                                <!---->
                                            </li>!
                                            <li><a class="sub"><span class="name">강아지 주식</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">고양이 간식</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">고양이 주식</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">반려동물 용품</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">배변·위생</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub"><span class="name">소용량·샘플</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li id="recommend_o" class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="/img/gnb_sub/19.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="/img/gnb_sub/19-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">컬리의 추천</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu recommend">
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/category/image/30a3191f-fde1-4665-a5ed-71bd8d6cdfef&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">호텔 예약</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/category/image/291b013e-cad1-42f3-81db-d9ddb3c5db03&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">홈캉스</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_diet.1585551225.jpg&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">식단관리</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_breakfast.1585549149.jpg&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">간편한 아침식사</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_best_210402.1617341016.png&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">재구매 BEST</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_3000_210303.1614667552.png&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">3천원의 행복</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kp_210108_4.1610088265.jpg&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">컬리마트</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/category/image/37194cb5-e9c1-4492-ac5a-385a1ff2b624&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">대용량 상품</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_camping_210405.1617341339.png&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">캠핑</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_single.1594026881.jpg&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">1인 가구</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_vegan_210303.1614667589.png&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">비건</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_offline_210303.1614666430.png&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">오프라인 맛집</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kurly_s_210303.1614667608.png&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">컬리가 만든 상품</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_only_210303.1614667623.png&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">Kurly Only</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/category/image/f8cf5fe6-4123-4147-981e-d7f889f9e316&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">KF365</span></a></li>
                                            <li>
                                                <!----> <a class="sub"><span class="thumb"
                                                        style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumb_kp_1PT_201222.1608611417.jpg&quot;);"><img
                                                            src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
                                                            alt=""></span> <span class="name">1% Table</span></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- gnb 종료 -->
        </div>
    </header>





    <section>
        <article>
            <div id="main_slider">
                <ul class="bxslider">
                    <li><a href="#"><img src="/img/main/ad_1.webp" alt=""></a></li>
                    <li><a href="#"><img src="/img/main/ad_2.webp" alt=""></a></li>
                    <li><a href="#"><img src="/img/main/ad_3.webp" alt=""></a></li>
                    <li><a href="#"><img src="/img/main/ad_4.webp" alt=""></a></li>
                    <li><a href="#"><img src="/img/main/ad_5.webp" alt=""></a></li>
                    <li><a href="#"><img src="/img/main/ad_6.webp" alt=""></a></li>
                    <li><a href="#"><img src="/img/main/ad_7.webp" alt=""></a></li>
                </ul>
            </div>
        </article>


        <article class="margin_wrap">
            <div class="ad_1">
                <div class="ad_1_tit main_tit">
                    <h3>이 상품 어때요?</h3>
                </div>
                <div class="ad_1_list">
                    <ul class="ad_1_list_1">
                        <li>
                            <a href="/html/ad_1_list/ad_1_1.html"><img src="/img/ad_1/1.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>친환경 채 도라지 150g</span>
                            </div>
                            <div class="pro_cou">
                                <span>25%</span>
                                <span>3,742원</span>
                            </div>
                            <div class="pro_pri">
                                <span>4,990원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_1_list/ad_1_2.html"><img src="/img/ad_1/2.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>친환경 아욱 & 근대 2종</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>2,290원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_1_list/ad_1_3.html"><img src="/img/ad_1/3.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[Everyday] 야채죽</span>
                            </div>
                            <div class="pro_cou">
                                <span>5%</span>
                                <span>3,800원</span>
                            </div>
                            <div class="pro_pri">
                                <span>4,000원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_1_list/ad_1_4.html"><img src="/img/ad_1/4.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[라메종드아모린] 살레위드 솔티드 버터 캐러멜 2종</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>7,900원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </article>

        <article>
            <div class="ad_2">
                <div class="ad_2_tit main_tit">
                    <h3><a href="#">특가/혜택 &#10095;</a></h3>
                </div>
                <div class="ad_2_list">
                    <ul>
                        <li>
                            <a href="/html/ad_2_list/ad_2_1.html"><img src="/img/ad_2/1.jpg" alt=""></a>
                            <p>소중한 식사 최대 15% 할인</p>
                            <span>판교에서 소문난 반찬가게</span>
                        </li>
                        <li>
                            <a href="/html/ad_2_list/ad_2_2.html"><img src="/img/ad_2/2.jpg" alt=""></a>
                            <p>해밀 최대 16% 할인</p>
                            <span>바다가 담긴 간편식</span>
                        </li>
                        <li>
                            <a href="/html/ad_2_list/ad_2_3.html"><img src="/img/ad_2/3.jpg" alt=""></a>
                            <p>풀무원다논 최대 15% 할인</p>
                            <span>맛있게 챙기는 유산균</span>
                        </li>
                    </ul>
                </div>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_3">
                <div class="ad_3_tit main_tit">
                    <h3><a href="#">놓치면 후회할 가격 &#10095;</a></h3>
                </div>
                <div class="ad_3_list">
                    <ul class="ad_3_list_1">
                        <li>
                            <a href="/html/ad_3_list/ad_3_1.html"><img src="/img/ad_3/1.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[3분포차] 직화닭목살구이</span>
                            </div>
                            <div class="pro_cou">
                                <span>25%</span>
                                <span>4,725원</span>
                            </div>
                            <div class="pro_pri">
                                <span>6,300원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_3_list/ad_3_2.html"><img src="/img/ad_3/2.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[미소향] 국내산 소고기 견과육포 80g</span>
                            </div>
                            <div class="pro_cou">
                                <span>20%</span>
                                <span>6,800원</span>
                            </div>
                            <div class="pro_pri">
                                <span>8,500원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_3_list/ad_3_3.html"><img src="/img/ad_3/3.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[모노키친] 소고기 스키야키</span>
                            </div>
                            <div class="pro_cou">
                                <span>18%</span>
                                <span>9,800원</span>
                            </div>
                            <div class="pro_pri">
                                <span>11,980원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_3_list/ad_3_4.html"><img src="/img/ad_3/4.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[마이셰프] 소고기고추잡채 & 꽃빵</span>
                            </div>
                            <div class="pro_cou">
                                <span>30%</span>
                                <span>13,230원</span>
                            </div>
                            <div class="pro_pri">
                                <span>18,900원</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_4">
                <a href="#">
                    <img src="/img/ad_4/ad.webp" alt="">
                </a>
            </div>
        </article>

        <article>
            <div class="ad_5">
                <div class="ad_5_tit main_tit">
                    <h3><a href="#">MD의 추천</a></h3>
                </div>
                <div class="category">
                    <ul class="category_list">
                        <li>
                            <a href="#none">
                                채소
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                과일·견과·쌀
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                수산·해산·건어물
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                정육·계란
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                국·반찬·메인요리
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                샐러드·간편식
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                면·양념·오일 </a>
                        </li>
                        <li>
                            <a href="#none">
                                생수·음료·우유·커피
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                간식·과자·떡
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                베이커리·치즈·델리
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                건강식품
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                생활용품·리빙·캠핑
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                스킨케어·메이크업
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                헤어·바디·구강
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                주방용품
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                가전제품
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                베이비·키즈
                            </a>
                        </li>
                        <li>
                            <a href="#none">
                                반려동물
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="ad_5_list margin_wrap">
                    <ul class="ad_5_list_1 clearfix">
                        <li>
                            <a href="/html/ad_5_list/ad_5_1.html"><img src="/img/ad_5/1.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>GAP 햇사레 황도 복숭아 4kg (13내)</span>
                            </div>
                            <div class="pro_cou">
                                <span>1%</span>
                                <span>49,490원</span>
                            </div>
                            <div class="pro_pri">
                                <span>49,990원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_5_list/ad_5_2.html"><img src="/img/ad_5/2.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>GAP 햇사레 황도 복숭아 2.5kg (10내)</span>
                            </div>
                            <div class="pro_cou">
                                <span>14%</span>
                                <span>25,791원</span>
                            </div>
                            <div class="pro_pri">
                                <span>29,990원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_5_list/ad_5_3.html"><img src="/img/ad_5/3.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[타미나] 부드러운 황도 복숭아 1.8kg 5~6입</span>
                            </div>
                            <div class="pro_cou">
                                <span>5%</span>
                                <span>21,090원</span>
                            </div>
                            <div class="pro_pri">
                                <span>22,200원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_5_list/ad_5_4.html"><img src="/img/ad_5/4.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[에이플] GAP 샤인머스캣 포도 500g 1팩</span>
                            </div>
                            <div class="pro_cou">
                                <span>15%</span>
                                <span>14,280원</span>
                            </div>
                            <div class="pro_pri">
                                <span>16,800원</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="ad_5_sub_tit margin_wrap">
                    <a href="#none">과일·견과·쌀 전체보기 &#10095;</a>
                </div>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_5_1">
                <a href="#">
                    <img src="/img/ad_5/ad.webp" alt="">
                </a>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_6">
                <div class="ad_6_tit main_tit">
                    <h3><a href="#">지금 가장 핫한 상품 ></a></h3>
                </div>
                <div class="ad_6_list">
                    <ul class="ad_6_list_1">
                        <li>
                            <a href="/html/ad_6_list/ad_6_1.html"><img src="/img/ad_6/1.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[숭의가든] 한돈 목살 양념구이</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>14,900원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_6_list/ad_6_2.html"><img src="/img/ad_6/2.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[화오미] 마라샹궈</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>7,200원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_6_list/ad_6_3.html"><img src="/img/ad_6/3.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[진가] 진생용의 해물 누룽지탕</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>9,500원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_6_list/ad_6_4.html"><img src="/img/ad_6/4.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[존쿡 델리미트] 바베큐 백립 450g (냉동)</span>
                            </div>
                            <div class="pro_cou">
                                <span>20%</span>
                                <span>12,000원</span>
                            </div>
                            <div class="pro_pri">
                                <span>15,000원</span>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </article>

        <article>
            <div class="ad_7">
                <div class="ad_7_tit main_tit">
                    <h3><a href="#">똑똑한 요리 비법, 주방가전 특가 &#10095;</a></h3>
                </div>
                <div class="ad_7_list">
                    <ul class="ad_7_list_1">
                        <li>
                            <a href="/html/ad_7_list/ad_7_1.html"><img src="/img/ad_7/1.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[아이닉] 대용량 에어프라이어 16L (7종 조리도구 포함)</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>178,000원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_7_list/ad_7_2.html"><img src="/img/ad_7/2.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[닌자] 프로페셔널 초퍼 NJ1001KR</span>
                            </div>
                            <div class="pro_cou">
                                <span>5%</span>
                                <span>61,655원</span>
                            </div>
                            <div class="pro_pri">
                                <span>64,900원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_7_list/ad_7_3.html"><img src="/img/ad_7/3.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[드레텍] 요거트 메이커 YM-100</span>
                            </div>
                            <div class="pro_cou">
                                <span>5%</span>
                                <span>37,810원</span>
                            </div>
                            <div class="pro_pri">
                                <span>39,800원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_7_list/ad_7_4.html"><img src="/img/ad_7/4.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[제니퍼룸] 워킷블렌더 3종</span>
                            </div>
                            <div class="pro_cou">
                                <span>5%</span>
                                <span>56,050원</span>
                            </div>
                            <div class="pro_pri">
                                <span>59,000원</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_8">
                <div class="ad_8_tit main_tit">
                    <h3><a href="#">마감 세일 &#10095;</a></h3>
                </div>
                <div class="ad_8_list">
                    <ul class="ad_8_list_1">
                        <li>
                            <a href="/html/ad_8_list/ad_8_1.html"><img src="/img/ad_8/1.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[쌜모네키친] 오로라 생연어 (냉장)</span>
                            </div>
                            <div class="pro_cou">
                                <span>12%</span>
                                <span>12,320원</span>
                            </div>
                            <div class="pro_pri">
                                <span>14,000원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_8_list/ad_8_2.html"><img src="/img/ad_8/2.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[더슬로우메이드] 쫀득 찰호팡 3종</span>
                            </div>
                            <div class="pro_cou">
                                <span>35%</span>
                                <span>4,290원</span>
                            </div>
                            <div class="pro_pri">
                                <span>6,600원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_8_list/ad_8_3.html"><img src="/img/ad_8/3.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[에이플] GAP 샤인머스캣 포도 500g 1팩</span>
                            </div>
                            <div class="pro_cou">
                                <span>15%</span>
                                <span>14,280원</span>
                            </div>
                            <div class="pro_pri">
                                <span>16,800원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_8_list/ad_8_4.html"><img src="/img/ad_8/4.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[성지농장] 동물복지 한돈 삼겹살 2종 (냉장)</span>
                            </div>
                            <div class="pro_cou">
                                <span>14%</span>
                                <span>11,352원</span>
                            </div>
                            <div class="pro_pri">
                                <span>13,200원</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </article>

        <article>
            <div class="ad_9">
                <div class="ad_9_tit main_tit">
                    <h3>
                        <a href="#">
                            365일 최저가 도전 &#10095;
                            </br>
                            <span>최저가 도전, 365일 언제나 알뜰하게</span>
                        </a>
                    </h3>
                </div>
                <div class="ad_9_list">
                    <ul class="ad_9_list_1">
                        <li>
                            <a href="/html/ad_9_list/ad_9_1.html"><img src="/img/ad_9/1.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[삼립] 클래식 우유 식빵</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>2,200원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_9_list/ad_9_2.html"><img src="/img/ad_9/2.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[한트바커] 그릴드 냉장 닭가슴살 2종</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>13,250원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_9_list/ad_9_3.html"><img src="/img/ad_9/3.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[KF365] 깐마늘 200g</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>2,660원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/ad_9_list/ad_9_4.html"><img src="/img/ad_9/4.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[종가집] 국산콩 두부 반모 200g (부침/찌개 겸용)</span>
                            </div>
                            <div class="pro_cou">
                                <span></span>
                                <span>2,200원</span>
                            </div>
                            <div class="pro_pri">
                                <span></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </article>

        
        <article class="margin_wrap">
            <div class="ad_10">
                <div class="ad_10_tit main_tit">
                    <h3>
                        <a href="#">컬리의 레시피 &#10095;</a>
                    </h3>
                </div>
                <div class="ad_10_list">
                    <ul>
                        <li>
                            <a href="#"><img src="/img/ad_10/1.jpg" alt=""></a>
                            <p>유부 소보로 덮밥</p>
                        </li>
                        <li>
                            <a href="#"><img src="/img/ad_10/2.jpg" alt=""></a>
                            <p>길거리 계란 토스트</p>
                        </li>
                        <li>
                            <a href="#"><img src="/img/ad_10/3.jpg" alt=""></a>
                            <p>제주식 고사리 육개장</p>
                        </li>
                    </ul>
                </div>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_11">
                <a href="#">
                    <img src="/img/ad_11/1.jpg" alt="">
                </a>
            </div>
        </article>
    </section>


    <footer>
        <div class="footer_cc">
            <h2 class="tit_cc">고객행복센터</h2>
            <div class="cc_view cc_call">
                <h3><span class="tit">1644-1107</span></h3>
                <dl class="list">
                    <dt>365고객센터</dt>
                    <dd>오전 7시 - 오후 7시</dd>
                </dl>
            </div>
            <div class="cc_view cc_kakao">
                <h3><a class="tit" href="#none">카카오톡 문의</a></h3>
                <dl class="list">
                    <dt>365고객센터</dt>
                    <dd>오전 7시 - 오후 7시</dd>
                </dl>
            </div>
            <div class="cc_view cc_qna">
                <h3><a href="#none" class="tit" data-member-id="${member.id}" data-click-board="qna">1:1 문의</a></h3>
                
                <dl class="list">
                    <dt>24시간 접수 가능</dt>
                    <dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
                </dl>
            </div>
            <div class="cc_view cc_bulkorder">
                <h3><a href="#" class="tit">대량주문 문의</a></h3>
                <p class="txt">비회원의 경우 메일로 문의 바랍니다.</p>
            </div>
        </div>

        <div class="company">
            <ul class="list">
                <li><a class="link" href="#">컬리소개</a></li>
                <li><a class="link"
                        href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&amp;showinfo=0&amp;wmode=opaque&amp;enablejsapi=1">컬리소개영상</a>
                </li>
                <li><a class="link" href="https://marketkurly.recruiter.co.kr/appsite/company/index"
                        target="_blank">인재채용</a></li>
                <li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
                <li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
                <li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
            </ul>
            법인명 (상호) : 주식회사 컬리
            <span class="bar">I</span>
            사업자등록번호 : 261-81-23567
            <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&amp;apv_perm_no=" target="_blank" class="link">사업자정보 확인</a>
            <br>
            통신판매업 : 제 2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준
            <br>
            주소 : 서울특별시 강남구 테헤란로 133, 18층(역삼동) <span class="bar">I</span> 대표이사 : 김슬아
            <br>
            입점문의 : <a href="https://forms.gle/oKMAe1SaicqMX3SC9" target="_blank" class="link">입점문의하기</a> <span
                class="bar">I</span> 제휴문의 : <a href="mailto:business@kurlycorp.com"
                class="link">business@kurlycorp.com</a>
            <br>
            채용문의 : <a href="mailto:recruit@kurlycorp.com" class="link">recruit@kurlycorp.com</a>
            <br>
            팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a href="mailto:help@kurlycorp.com"
                class="link">help@kurlycorp.com</a>
            <br>
            대량주문 문의 : <a href="mailto:kurlygift@kurlycorp.com" class="link">kurlygift@kurlycorp.com</a>
            <em class="copy">© KURLY CORP. ALL RIGHTS RESERVED</em>
            <ul class="list_sns">
                <li>
                    <a href="https://instagram.com/marketkurly" class="link_sns" target="_blank"><img
                            src="https://res.kurly.com/pc/ico/1810/ico_instagram.png" alt="마켓컬리 인스타그램 바로가기"></a>
                </li>
                <li>
                    <a href="https://www.facebook.com/marketkurly" class="link_sns" target="_blank"><img
                            src="https://res.kurly.com/pc/ico/1810/ico_fb.png" alt="마켓컬리 페이스북 바로가기"></a>
                </li>
                <li>
                    <a href="http://blog.naver.com/marketkurly" class="link_sns" target="_blank"><img
                            src="https://res.kurly.com/pc/ico/1810/ico_blog.png" alt="마켓컬리 네이버블로그 바로가기"></a>
                </li>
                <li>
                    <a href="https://m.post.naver.com/marketkurly" class="link_sns" target="_blank"><img
                            src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png" alt="마켓컬리 유튜브 바로가기"></a>
                </li>
                <li>
                    <a href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg" class="link_sns lst"
                        target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_youtube.png"
                            alt="마켓컬리 유튜브 바로가기"></a>
                </li>
            </ul>
        </div>

    </footer>

</body>

</html>