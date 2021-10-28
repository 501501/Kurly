<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="./resources/css/reset.css">
    <link rel="stylesheet" href="./resources/css/index.css">
    <link rel="stylesheet" href="./resources/js/bxslider-4-4.2.12/dist/jquery.bxslider.css">
    <script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="./resources/js/bxslider-4-4.2.12/dist/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="./resources/js/bx.js"></script>
    <script type="text/javascript" src="./resources/js/add.js"></script>
	<c:import url="./temp/header.jsp"></c:import>
</head>

<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("header.html");    
        </script>
    </header>

    <section>
        <article>
            <div id="main_slider">
                <ul class="bxslider">
                    <li><img src="./resources/img/main/ad_1.webp" alt=""></li>
                    <li><img src="./resources/img/main/ad_2.webp" alt=""></li>
                    <li><img src="./resources/img/main/ad_3.webp" alt=""></li>
                    <li><img src="./resources/img/main/ad_4.webp" alt=""></li>
                    <li><img src="./resources/img/main/ad_5.webp" alt=""></li>
                    <li><img src="./resources/img/main/ad_6.webp" alt=""></li>
                    <li><img src="./resources/img/main/ad_7.webp" alt=""></li>
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
                            <a href="./goods/goods_view/ad_1_1?goodsNo=1"><img src="./resources/img/ad_1/1.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_1_2"><img src="./resources/img/ad_1/2.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_1_3"><img src="./resources/img/ad_1/3.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_1_4"><img src="./resources/img/ad_1/4.jpg" alt=""></a>
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
                    </li>

                        </ul>

                </div>
            </div>
        </article>





        <article>
            <div class="ad_2">
                <div class="ad_2_tit main_tit">
                    <h3><a href="./goods/event">특가/혜택 &#10095;</a></h3>
                </div>
                <div class="ad_2_list">
                    <ul>
                        <li>
                            <a href="./goods/goods_view/ad_2_1"><img src="./resources/img/ad_2/1.jpg" alt=""></a>
                            <p>소중한 식사 최대 15% 할인</p>
                            <span>판교에서 소문난 반찬가게</span>
                        </li>
                        <li>
                            <a href="./goods/goods_view/ad_2_2"><img src="./resources/img/ad_2/2.jpg" alt=""></a>
                            <p>해밀 최대 16% 할인</p>
                            <span>바다가 담긴 간편식</span>
                        </li>
                        <li>
                            <a href="./goods/goods_view/ad_2_3"><img src="./resources/img/ad_2/3.jpg" alt=""></a>
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
                    <h3><a href="./goods/goods_list/bargain">놓치면 후회할 가격 &#10095;</a></h3>
                </div>
                <div class="ad_3_list">
                    <ul class="ad_3_list_1">
                        <li>
                            <a href="./goods/goods_view/ad_3_1"><img src="./resources/img/ad_3/1.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_3_2"><img src="./resources/img/ad_3/2.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_3_3"><img src="./resources/img/ad_3/3.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_3_4"><img src="./resources/img/ad_3/4.jpg" alt=""></a>
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
                <img src="./resources/img/ad_4/ad.webp" alt="">
            </div>
        </article>

        <article>
            <div class="ad_5">
                <div class="ad_5_tit main_tit">
                    <h3><a href="./goods/goods_list/best">MD의 추천</a></h3>
                </div>
                <div class="category">
                    <ul class="category_list">
                        <li>
                            <a href="./gnb_sub/1_vag/1">
                                채소
                            </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/2_fru/1">
                                과일·견과·쌀
                            </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/3_fish/1">
                                수산·해산·건어물
                            </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/4_meat/1">
                                정육·계란
                            </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/5_side/1">
                                국·반찬·메인요리
                            </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/6_salad/1">
                                샐러드·간편식
                            </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/7_oil/1">
                                면·양념·오일 </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/8_drink/1">
                                생수·음료·우유·커피
                            </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/9_snack/1">
                                간식·과자·떡
                            </a>
                        </li>
                        <li>
                            <a href="./gnb_sub/10_bake/1">
                                베이커리·치즈·델리
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="ad_5_list margin_wrap">
                    <ul class="ad_5_list_1 clearfix">
                        <li>
                            <a href="./goods/goods_view/ad_5_1"><img src="./resources/img/ad_5/1.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_5_2"><img src="./resources/img/ad_5/2.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_5_3"><img src="./resources/img/ad_5/3.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_5_4"><img src="./resources/img/ad_5/4.jpg" alt=""></a>
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
                    <a href="./gnb_sub/2_fru/1">과일·견과·쌀 전체보기 &#10095;</a>
                </div>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_5_1">
                <img src="./resources/img/ad_5/ad.webp" alt="">
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_6">
                <div class="ad_6_tit main_tit">
                    <h3><a href="./goods/goods_list/best">지금 가장 핫한 상품 ></a></h3>
                </div>
                <div class="ad_6_list">
                    <ul class="ad_6_list_1">
                        <li>
                            <a href="./goods/goods_view/ad_6_1"><img src="./resources/img/ad_6/1.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_6_2"><img src="./resources/img/ad_6/2.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_6_3"><img src="./resources/img/ad_6/3.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_6_4"><img src="./resources/img/ad_6/4.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_7_1"><img src="./resources/img/ad_7/1.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_7_2"><img src="./resources/img/ad_7/2.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_7_3"><img src="./resources/img/ad_7/3.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_7_4"><img src="./resources/img/ad_7/4.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_8_1"><img src="./resources/img/ad_8/1.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_8_2"><img src="./resources/img/ad_8/2.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_8_3"><img src="./resources/img/ad_8/3.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_8_4"><img src="./resources/img/ad_8/4.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_9_1"><img src="./resources/img/ad_9/1.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_9_2"><img src="./resources/img/ad_9/2.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_9_3"><img src="./resources/img/ad_9/3.jpg" alt=""></a>
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
                            <a href="./goods/goods_view/ad_9_4"><img src="./resources/img/ad_9/4.jpg" alt=""></a>
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
                            <a href="#none"><img src="./resources/img/ad_10/1.jpg" alt=""></a>
                            <p>유부 소보로 덮밥</p>
                        </li>
                        <li>
                            <a href="#none"><img src="./resources/img/ad_10/2.jpg" alt=""></a>
                            <p>길거리 계란 토스트</p>
                        </li>
                        <li>
                            <a href="#none"><img src="./resources/img/ad_10/3.jpg" alt=""></a>
                            <p>제주식 고사리 육개장</p>
                        </li>
                    </ul>
                </div>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="ad_11">
                <a href="#">
                    <img src="./resources/img/ad_11/1.jpg" alt="">
                </a>
            </div>
        </article>
    </section>

    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("footer.html");
        </script>
    </footer>

<c:import url="./temp/footer.jsp"></c:import>
</body>
</html>