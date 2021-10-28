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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/css/reset.css">
    <link rel="stylesheet" href="../../resources/css/category/bargain.css">
    <script src="../../resources/js/jquery-3.4.1.js" type="text/javascript" text="javascript"></script>
    <script src="../../resources/js/add.js"></script>
    <c:import url="../temp/header.jsp"></c:import>
</head>
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("/header.html");
        </script>
    </header>


    <section>
        <article>
            <div class="main margin_wrap">
                <a href="#none"><img src="../../resources/img/bargain/main.webp" alt=""></a>
            </div>
        </article>

        <article class="margin_wrap">
            <div class="title">
                <div class="text margin_wrap">
                    <h3>알뜰쇼핑</h3>
                </div>
                <div class="goods">
                    <ul class="goods_list">
                        <li>
                            <a href="/html/bargain/bargain_1.html"><img src="../../resources/img/bargain/1.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[아토앤오투]바른 손소독제 2종</span>
                            </div>
                            <div class="pro_cou">
                                <span>64%</span>
                                <span>6,980원</span>
                        </div>
                            <div class="pro_pri">
                                <span>19,800원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/bargain/bargain_2.html"><img src="../../resources/img/bargain/2.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[아벤느]에센셜 로씨옹 미셀레르 500ml(미셀라 클렌징)</span>
                            </div>
                            <div class="pro_cou">
                                <span>63%</span>
                                <span>12,950원</span>
                            </div>
                            <div class="pro_pri">
                                <span>35,000원</span>
                            </div>
                        </li>

                        <li>
                            <a href="/html/bargain/bargain_3.html"><img src="../../resources/img/bargain/3.jpg" alt=""></a>
                            <div class="pro_tit">
                                <span>[AHC]내추럴 퍼펙션 프로쉴드 선스틱</span>
                            </div>
                            <div class="pro_cou">
                                <span>60%</span>
                                <span>8,400원</span>
                            </div>
                            <div class="pro_pri">
                                <span>21,000원</span>
                            </div>
                        </li>
                    </ul>

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
</body>
</html>