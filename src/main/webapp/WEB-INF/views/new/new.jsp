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
    <link rel="stylesheet" href="../../resources/css/category/new.css">
    <script src="../../resources/js/jquery-3.4.1.js" type="text/javascript" text="javascript"></script>
    <script src="../../resources/js/add.js"></script>
    <c:import url="../temp/header.jsp"></c:import>
</head>
<body>
	<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("/header.html");
        </script>
    </header>

    <article>
        <div class="main margin_wrap">
            <a href="#none"><img src="/resources/img/new/main.webp" alt=""></a>
        </div>
    </article>

    <article class="margin_wrap">
        <div class="title">
            <div class="text margin_wrap">
                <h3>신상품</h3>
            </div>
            <div class="goods">
                <ul class="goods_list">
                    <li>
                        <a href="/html/new/new_1.html"><img src="../../resources/img/new/1.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>[니코하몽]세라노 홀 더 나이프 세트</span>
                        </div>
                        <div class="pro_cou">
                            <span></span>
                            <span>39,900원</span>
                        </div>
                        <div class="pro_pri">
                            <span>4,990원</span>
                        </div>
                    </li>

                    <li>
                        <a href="/html/new/new_2.html"><img src="../../resources/img/new/2.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>[존쿡 델리미트]바베큐 플래터</span>
                        </div>
                        <div class="pro_cou">
                            <span>5%</span>
                            <span>48,100원</span>
                        </div>
                        <div class="pro_pri">
                            <span>51,100원</span>
                        </div>
                    </li>

                    <li>
                        <a href="/html/new/new_3.html"><img src="../../resources/img/new/3.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>[양포어장]꽁치 과메기 진공포장(5미)(냉장)</span>
                        </div>
                        <div class="pro_cou">
                            <span></span>
                            <span>11,000원</span>
                        </div>
                        <div class="pro_pri">
                            <span></span>
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
</body>
</html>