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
    <link rel="stylesheet" href="../../resources/css/gnb_sub/list/1.css">
    <script src="../../resources/js/jquery-3.4.1.js" type="text/javascript" text="javascript"></script>
    <script src="../../resources/js/add.js"></script>
    <c:import url="../../temp/header.jsp"></c:import>
</head>
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("/header.html");
        </script>
    </header>

    <section>
        <article>
            <div class="ad margin_wrap">
                <a href="#"><img src="../../resources/img/gnb_ad/6.webp" alt=""></a>
            </div>
        </article>

        <article class="con margin_wrap">
            <div class="title">
                <h3>샐러드·간편식</h3>
            </div>

            <ul class="list">
                <li><a href="">전체보기</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/6_salad/1">샐러드·닭가슴살</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/6_salad/2">도시락·밥류</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/6_salad/3">파스타·면류</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/6_salad/4">떡볶이·튀김·순대</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/6_salad/5">피자·핫도그·만두</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/6_salad/6">폭립·떡갈비·안주</a></li>
            </ul>

            <div class="goods">
                <ul class="goods_list">
                    <li>
                        <a href="#"><img src="../../resources/img/gnb_list/6/4/1.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>[테이스티반점]멘보샤]</span>
                        </div>
                        <div class="pro_cou">
                            <span></span>
                            <span>7,225원</span>
                        </div>
                        <div class="cart_btn">
                            <a href="#"><img src="../../resources/img/gnb_list/ico_cart.svg" alt=""></a>
                        </div>
                    </li>

                    <li>
                        <a href="#"><img src="../../resources/img/gnb_list/6/4/2.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>포테이토 칩</span>
                        </div>
                        <div class="pro_cou">
                            <span></span>
                            <span>4,200원</span>
                        </div>
                        <div class="cart_btn">
                            <a href="#"><img src="../../resources/img/gnb_list/ico_cart.svg" alt=""></a>
                        </div>
                    </li>

                    <li>
                        <a href="#"><img src="../../resources/img/gnb_list/6/4/3.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>[자연예찬]순수한 순대</span>
                        </div>
                        <div class="pro_cou">
                            <span></span>
                            <span>7,500원</span>
                        </div>
                        <div class="cart_btn">
                            <a href="#"><img src="../../resources/img/gnb_list/ico_cart.svg" alt=""></a>
                        </div>
                    </li>
                </ul>

            </div>
        </article>

    </section>

    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>
	<c:import url="../../temp/footer.jsp"></c:import>
</body>
</html>