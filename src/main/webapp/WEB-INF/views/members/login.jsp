<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">


<style>
#main {
    border-bottom: 1px solid #f7f7f7;
}

#content {
    min-width: 1050px;
    padding-bottom: 60px;
}

#header, #container, #content {
    position: relative;
}

.section_login {
    width: 340px;
    margin: 0 auto;
    padding-top: 90px;
    letter-spacing: -.6px;
}

.section_login .tit_login {
    font-weight: 800;
    font-size: 20px;
    line-height: 20px;
    text-align: center;
}

.section_login * {
    font-family: noto sans;
    color: #333;
}

h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

.section_login .write_form {
    padding-top: 36px;
}

.section_login * {
    font-family: noto sans;
    color: #333;
}

.section_login input[type=number], .section_login input[type=text], .section_login input[type=password] {
    width: 100%;
    height: 54px;
    padding: 0 19px;
    border: 1px solid #ccc;
    border-radius: 3px;
    background-color: #fff;
    font-size: 14px;
    line-height: 20px;
    outline: none;
}

.section_login [name=password], .section_login [name=ordno], .section_login .login_view [name=srch_mail], .section_login [name=srch_id] {
    margin-top: 10px;
}

.section_login .login_search {
    float: right;
    padding-top: 13px;
}

.section_login .login_search .link {
    float: left;
    font-size: 13px;
}

a:active, a:hover {
    outline: 0;
}

.section_login .login_search .bar {
    float: left;
    width: 1px;
    height: 10px;
    margin: 3px 6px 0;
    background-color: #333;
}

.section_login .checkbox_save {
    overflow: hidden;
    padding-bottom: 28px;
}

.btn_type1 {
    border: 1px solid #5f0081;
    background-color: #5f0080;
}

.btn_type1, .btn_type2 {
    display: block;
    overflow: hidden;
    width: 100%;
    height: 54px;
    border-radius: 3px;
    font-size: 0;
    text-align: center;
}

.btn_type1 .txt_type {
    color: #fff;
}

.btn_type1 .txt_type, .btn_type2 .txt_type {
    display: inline-block;
    height: 100%;
    font-weight: 500;
    font-size: 16px;
    color: #fff;
    line-height: 51px;
    text-align: center;
}
</style>

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

    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/member/login.css">
    <script src="../../resources/js/jquery-3.4.1.js"></script>
    <script src="../../resources/js/add.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


    <link rel="stylesheet" href="../../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/member/login.css">
    <link rel="stylesheet" href="../resources/css/footer.css">
    <link rel="stylesheet" href="../resources/css/header.css">
    <script src="../../resources/js/jquery-3.4.1.js"></script>
    <script src="../../resources/js/add.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>

<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("/header.html");
        </script>
    </header>

    <div id="main">
        <div id="content">
            <div class="section_login">
                <h3 class="tit_login">로그인</h3>
                <div class="write_form">
                    <div class="write_view login_view">

                        <form method="post" name="form" id="form" onsubmit="return checkReCaptcha();"
                            action="login">

                        <form method="post" name="form" id="form" action="login" onsubmit="return checkReCaptcha();">

                            <input type="hidden" name="returnUrl" value="https://www.kurly.com/shop/member/join.php">
                            <input type="hidden" name="return_url" value="">
                            <input type="hidden" name="close" value="">
                            <input type="text" name="id" size="20" tabindex="1" value="" placeholder="아이디를 입력해주세요">
                            <input type="password" name="pw" size="20" tabindex="2" placeholder="비밀번호를 입력해주세요">
                            <div class="checkbox_save">
                                <div class="login_search">
                                    <a href="./join" class="link">회원가입</a>
                                    <span class="bar"></span>
                                    <a href="./find_id" class="link">아이디 찾기</a>
                                    <span class="bar"></span>
                                    <a href="./find_pwd" class="link">비밀번호 찾기</a>
                                </div>
                            </div>
                            <button type="submit" class="btn_type1"><span class="txt_type">로그인</span></button>
                        </form>
                        <a href="./join" class="btn_type2 btn_member"><span class="txt_type">회원가입</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>


</body>

</html>