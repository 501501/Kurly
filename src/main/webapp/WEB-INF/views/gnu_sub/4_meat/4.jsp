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
                <a href="#"><img src="../../resources/img/gnb_ad/4.webp" alt=""></a>
            </div>
        </article>

        <article class="con margin_wrap">
            <div class="title">
                <h3>정육·계란</h3>
            </div>
            <ul class="list">
                <li><a>전체보기</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/4_meat/1">국내산 소고기</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/4_meat/2">수입산 소고기</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/4_meat/3">돼지고기</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/4_meat/4">계란류</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/4_meat/5">닭·오리고기</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/4_meat/6">양념육·돈까스</a></li>
                <li><a href="${pageContext.request.contextPath}/gnb_sub/4_meat/7">양고기</a></li>
            </ul>


            <div class="goods">
                <ul class="goods_list">
                    <li>
                        <a href="#"><img src="../../resources/img/gnb_list/4/4/1.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>정직한 훈제란 2입</span>
                        </div>
                        <div class="pro_cou">
                            <span></span>
                            <span>39,900원</span>
                        </div>
                        <div class="cart_btn">
                            <a href="#"><img src="../../resources/img/gnb_list/ico_cart.svg" alt=""></a>
                        </div>
                    </li>

                    <li>
                        <a href="#"><img src="../../resources/img/gnb_list/4/4/2.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>정직한 구운란 2입</span>
                        </div>
                        <div class="pro_cou">
                            <span></span>
                            <span>1,600원</span>
                        </div>
                        <div class="cart_btn">
                            <a href="#"><img src="../../resources/img/gnb_list/ico_cart.svg" alt=""></a>
                        </div>
                    </li>

                    <li>
                        <a href="#"><img src="../../resources/img/gnb_list/4/4/3.jpg" alt=""></a>
                        <div class="pro_tit">
                            <span>요리란(전란) 500g</span>
                        </div>
                        <div class="pro_cou">
                            <span></span>
                            <span>11,000원</span>
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