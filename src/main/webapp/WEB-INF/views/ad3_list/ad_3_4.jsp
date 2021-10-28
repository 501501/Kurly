<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="../../resources/css/reset.css">
    <link rel="stylesheet" href="../../resources/css/ad_list/list.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="../../resources/js/jquery-3.4.1.js"></script>
    <script src="../../resources/js/add.js"></script>
    <c:import url="../temp/header.jsp"></c:import>
</head>
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("/header.html");
        </script>
    </header>
	<input hidden="hidden" value="${member.id}" name="user_id">
	<input hidden="hidden" value="${param.goodsNo}" name="product_id">
	<input hidden="hidden" value="" name="amount" id="transferAmount">
    <section>
        <article>

            <div class="section_view">

                <div id="shareLayer">
                    <div class="layer_share">
                        <div class="inner_layersns">
                            <h3 class="screen_out">SNS 공유하기</h3>
                        </div>
                    </div>
                </div>

                <div id="sectionView">
                    <div class="inner_view">
                        <div class="thumb">
                            <img src="../../resources/img/ad_3/4.jpg" alt="">
                        </div>

                        <p class="goods_name">
                            <span class="btn_share">
                                <button id="btnShare" data-goodsno="2658">공유하기</button>
                            </span>
                            <strong class="name">[마이셰프] 소고기고추잡채 & 꽃빵</strong>
                            <span class="short_desc">구성품 탄탄한 중화요리 밀키트</span>
                        </p>
                        <p class="goods_price">
                            <span class="position">
                                <span class="dc"><span class="dc_price">
                                        13,230
                                        <span class="won">원</span>
                                    </span>
                                </span>
                            </span>

                            <span class="not_login">
                                <span>로그인 후, 적립혜택이 제공됩니다.</span>
                            </span>
                        </p>

                        <div class="goods_info">
                            <dl class="list fst">
                                <dt class="tit">판매단위</dt>
                                <dd class="desc">1개 </dd>
                            </dl>
                            <dl class="list">
                                <dt class="tit">중량/용량</dt>
                                <dd class="desc">895g</dd>
                            </dl>
                            <dl class="list">
                                <dt class="tit">배송구분</dt>
                                <dd class="desc">샛별배송/택배배송</dd>
                            </dl>
                            <dl class="list">
                                <dt class="tit">원산지</dt>
                                <dd class="desc">국산</dd>
                            </dl>
                            <dl class="list">
                                <dt class="tit">포장타입</dt>
                                <dd class="desc"> 냉장/종이포장 <strong class="emph"> 택배배송은 에코포장이 스티로폼으로 대체됩니다. </strong></dd>
                            </dl>
                            <dl class="list">
                                <dt class="tit">알레르기정보</dt>
                                <dd class="desc">
                                    - 대두, 밀, 쇠고기, 우유, 새우 ,오징어, 닭고기, 조개류(굴) 함유
                                </br>
                                    - 이 제품은 난류, 토마토, 메밀, 땅콩, 고등어, 게, 돼지고기, 복숭아, 아황산류, 호두, 조개류(전복, 홍합 포함), 잣을 사용한 제품과 같은 제조시설에서 제조하고 있습니다.
                                </dd>
                            </dl>
                            <dl class="list">
                                <dt class="tit">유통기한</dt>
                                <dd class="desc">수령일 포함 최소 4일 남은 제품을 보내 드립니다</dd>
                            </dl>
                            <dl class="list">
                                <dt class="tit">안내사항</dt>
                                <dd class="desc">
                                    <span class="txt">파프리카의 수분함유량이 많아 신선한 배송을 위하여 5/17 제조 상품부터 채 썰지 않은 파프리카로 출고 됩니다. 기호에 맞게 채썰어 드세요. ​
                                    </span>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>

                <div id="cartPut">
                    <div class="cart_option cartList cart_type2">
                        <div class="inner_option">
                            <div class="in_option">
                                <div class="list_goods">
                                    <ul class="list list_nopackage">
                                        <li class="on">
                                            <span class="btn_position">
                                                <button type="button" class="btn_del">
                                                    <span class="txt">삭제하기</span>
                                                </button>
                                            </span>
                                            <span class="name">
                                                친환경 채 도라지 150g
                                            </span>
                                            <span class="tit_item">구매수량</span>
                                            <div class="option">
                                                <span class="count">
                                                    <button type="button" class="btn down on" onclick="downNumber()">수량내리기</button>
                                                    <input type="number" readonly="readonly" 
                                                        class="inp" id="finalAmount">
                                                    <button type="button" class="btn up on" onclick="upNumber()">수량올리기</button>
                                                </span>
                                                <span class="price">
                                                    <span class="dc_price">13,230원</span>
                                                </span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="total">
                                    <div class="price">
                                        <strong class="tit">총 상품금액 :</strong>
                                        <span class="sum">
                                            <span class="num">13,230</span>
                                            <span class="won">원</span>
                                        </span>
                                    </div>
                                    <p class="txt_point">
                                        <span class="ico">적립</span>
                                        <span class="no_login">
                                            <span>로그인 후, 적립혜택 제공</span>
                                        </span>

                                    </p>
                                </div>
                            </div>
                            <div class="group_btn off">
                                <div class="view_function">
                                    <button type="button" class="btn btn_alarm">재입고 알림</button>
                                </div>
                                <span class="btn_type1">
                                    <button type="button" class="txt_type"> 장바구니 담기 </button>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="cart_option cartList cart_type1">
                        <div class="inner_option">
                            <div class="in_option">
                                <div class="list_goods">
                                    <div class="bar_open">
                                        <button type="button" class="btn_close">
                                            <span class="ico">상품 선택</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="group_btn off">
                                <div class="view_function">
                                    <button type="button" class="btn btn_alarm">재입고 알림</button>
                                </div>
                                <span class="btn_type1">
                                    <button type="button" class="txt_type"> 장바구니 담기</button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </article>
    </section>
    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>
	<c:import url="../temp/footer.jsp"></c:import>
	<script type="text/javascript" src="../../resources/js/up_down.js"></script>
</body>
</html>