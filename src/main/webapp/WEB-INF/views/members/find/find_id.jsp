<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->

<!DOCTYPE html>
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
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/member/id.css">
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
                <h3 class="tit_login">아이디 찾기</h3>
                <div class="write_form find_view">
                    <form id="form" name="fm" method="post" action="find_id" onsubmit="return chkForm( this );">
                        <input type="hidden" name="act" value="Y">
                        <input type="hidden" name="rncheck" value="none">
                        <input type="hidden" name="dupeinfo" value="">
                        <strong class="tit_label">이름</strong>
                        <input type="text" name="name" tabindex="2" size="29" required="required"
                            placeholder="고객님의 이름을 입력해주세요">
                        <strong class="tit_label">이메일</strong>
                        <input type="text" name="email" size="29" tabindex="5" required="required"
                            placeholder="가입 시 등록하신 이메일 주소를 입력해주세요">
                        <button type="submit" class="btn_type1"><span class="txt_type">확인</span></button>
                    </form>
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