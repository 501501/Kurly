<%@ page language="java" contentType="text./html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="/kurly/resources/css/reset.css">
    <link rel="stylesheet" href="/kurly/resources/css/header.css">
    <script src="/kurly/resources/js/jquery-3.4.1.js"></script>
    <script src="/kurly/resources/js/header.js"></script>
    <script src="/kurly/resources/js/bxslider-4-4.2.12/dist/jquery.bxslider.min.js"></script>
    <script src="/kurly/resources/js/bx.js"></script>
</head>

<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>



    <header class="clearfix">
 
        <div id="top-message" class="bnr_header">
            <a href="#" id="eventLanding" style="color: #ffffff;">
                지금 가입하고 인기상품 <b>100원</b>에 받아가세요!
                <img src="${pageContext.request.contextPath}/resources/img/sub_header/ico_arrow_fff_84x84.webp" class="bnr_arr">
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
                        <img src="${pageContext.request.contextPath}/resources/img/usermenu/delivery_210801.webp" alt="샛별, 택배 배송안내" width="121" height="22">
                    </a>
                </div>

                <div id="userMenu">
                    <ul class="list_menu">
                        <li class="menu none_sub menu_join">
                            <a href="${pageContext.request.contextPath}/members/join" class="link_menu">회원가입</a>
                        </li>

                        <li class="menu none_sub menu_login">
                            <a href="${pageContext.request.contextPath}/members/login" class="link_menu">로그인</a>
                        </li>

                        <li class="menu lst"><a href="${pageContext.request.contextPath}/board/list" class="link_menu">고객센터</a>
                            <ul class="sub">
                                <li>
                                    <a href="${pageContext.request.contextPath}/board/list" onclick="KurlyTrackerLink('#')">공지사항</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/service/faq" onclick="KurlyTrackerLink('#')">자주하는 질문</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/mypage/mypage_qna" onclick="KurlyTrackerLink('#')">1:1 문의</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/mypage/bulk_order" onclick="KurlyTrackerLink('#')">대량주문 문의</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/mypage/offer" onclick="KurlyTrackerLink('#')">상품 제안</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/mypage/echo_packing" onclick="KurlyTrackerLink('#')">에코포장 피드백</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
            <!-- usermenu 종료 -->

            <!-- logo 시작 -->
            <div id="logo">
                <h1 class="logo">
                    <a href="/kurly">
                        <img src="/kurly/resources/img/logo/logo.svg" alt="로고" />
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
                                    <a href="./html/new/new.html" class="link new">
                                        <span class="txt">신상품</span>
                                    </a>
                                </li>
                                <li class="menu3">
                                    <a href="./html/best/best.html" class="link best">
                                        <span class="txt">베스트</span>
                                    </a>
                                </li>
                                <li class="menu4">
                                    <a href="./html/bargain/bargain.html" class="link bargain">
                                        <span class="txt">알뜰쇼핑</span>
                                    </a>
                                </li>
                                <li class="lst">
                                    <a href="./html/event/event.html" class="link event">
                                        <span class="txt">특가/혜택</span>
                                    </a>
                                </li>
                            </ul>

                            <!-- 검색창 -->
                            <div id="side_search" class="gnb_search">
                                <form>
                                    <input type="text" id="sword" name="sword" value required="required" label="검색어"
                                        placeholder="검색어를 입력해주세요." class="inp_search">
                                    <input type="image" src="/kurly/resources/img/gnb/search.jpg" class="btn_search">
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
                                        <img src="./resources/img/gnb/bg_1_1.webp" alt="" class="thumb">
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
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/1.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/1-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">채소</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/1_vag/1.html"><span class="name">친환경</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/1_vag/2.html"><span class="name">고구마·감자·당근</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/1_vag/3.html"><span class="name">시금치·쌈채소·나물</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/1_vag/4.html"><span class="name">브로콜리·파프리카·양배추</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/1_vag/5.html"><span class="name">양파·대파·마늘·배추</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/1_vag/6.html"><span class="name">오이·호박·고추</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/1_vag/7.html"><span class="name">냉동·이색·간편채소</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/2.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/2-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">과일·견과·쌀</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/2_fru/1.html"><span class="name">친환경</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/2_fru/2.html"><span class="name">제철과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/2_fru/3.html"><span class="name">국산과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/2_fru/4.html"><span class="name">수입과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/2_fru/5.html"><span class="name">간편과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/2_fru/6.html"><span class="name">냉동·건과일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/2_fru/7.html"><span class="name">견과류</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/3.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/3-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">수산·해산·건어물</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/3_fish/1.html"><span class="name">제철수산</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/3_fish/2.html"><span class="name">생선류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/3_fish/3.html"><span class="name">굴비·반건류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/3_fish/4.html"><span class="name">오징어·낙지·문어</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/3_fish/5.html"><span class="name">새우·게·랍스터</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/3_fish/6.html"><span class="name">해산물·조개류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/3_fish/7.html"><span class="name">수산가공품</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/4.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/4-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">정육·계란</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/4_meat/1.html"><span class="name">국내산 소고기</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/4_meat/2.html"><span class="name">수입산 소고기</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/4_meat/3.html"><span class="name">돼지고기</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/4_meat/4.html"><span class="name">계란류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/4_meat/5.html"><span class="name">닭·오리고기</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/4_meat/6.html"><span class="name">양념육·돈까스</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/4_meat/7.html"><span class="name">양고기</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/5.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/5-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">국·반찬·메인요리</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/5_side/1.html" ><span class="name">국·탕·찌개</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/5_side/2.html" ><span class="name">밀키트·메인요리</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/5_side/3.html" ><span class="name">밑반찬</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/5_side/4.html" ><span class="name">김치·젓갈·장류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/5_side/5.html" ><span class="name">두부·어묵·부침개</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/5_side/6.html" ><span class="name">베이컨·햄·통조림</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/6.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/6-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">샐러드·간편식</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/6_salad/1.html"><span class="name">샐러드·닭가슴살</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/6_salad/2.html"><span class="name">도시락·밥류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/6_salad/3.html"><span class="name">파스타·면류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/6_salad/4.html"><span class="name">떡볶이·튀김·순대</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/6_salad/5.html"><span class="name">피자·핫도그·만두</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/6_salad/6.html"><span class="name">폭립·떡갈비·안주</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/7.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/7-1.png" alt=" 카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">면·양념·오일</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/7_oil/1.html"><span class="name">파스타·면류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/7_oil/2.html"><span class="name">식초·소스·드레싱</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/7_oil/3.html"><span class="name">양념·액젓·장류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/7_oil/4.html"><span class="name">식용유·참기름·오일</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/7_oil/5.html"><span class="name">소금·설탕·향신료</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/7_oil/6.html"><span class="name">밀가루·가루·믹스</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/8.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/8-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">생수·음료·우유·커피</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/8_drink/1.html"><span class="name">생수·탄산수</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/8_drink/2.html"><span class="name">음료·주스</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/8_drink/3.html"><span class="name">우유·두유·요거트</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/8_drink/4.html"><span class="name">커피</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/8_drink/5.html"><span class="name">차</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/9.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/9-1.png" alt="카테고리 아이콘" class="ico_on"></span>
                                            <span class="tit">
                                                <span class="txt">간식·과자·떡</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/9_snack/1.html"><span class="name">과자·스낵·쿠키</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/9_snack/2.html"><span class="name">초콜릿·젤리·캔디</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/9_snack/3.html"><span class="name">떡·한과</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/9_snack/4.html"><span class="name">아이스크림</span></a>
                                                <!---->
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="">
                                        <a class="menu">
                                            <span class="ico">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/10.png" alt="카테고리 아이콘" class="ico_off">
                                                <img src="${pageContext.request.contextPath}/resources/img/gnb_sub/10-1.png" alt="카테고리 아이콘" class="ico_on">
                                            </span>
                                            <span class="tit">
                                                <span class="txt">베이커리·치즈·델리</span>
                                            </span>
                                        </a>
                                        <ul class="sub_menu">
                                            <li><a class="sub" href="./html/gnb_sub/10_bake/1.html"><span class="name">식빵·빵류</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/10_bake/2.html"><span class="name">잼·버터·스프레드</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/10_bake/3.html"><span class="name">케이크·파이·디저트</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/10_bake/4.html"><span class="name">치즈</span></a>
                                                <!---->
                                            </li>
                                            <li><a class="sub" href="./html/gnb_sub/10_bake/5.html"><span class="name">델리</span></a>
                                                <!---->
                                            </li>
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

</body>

</html>