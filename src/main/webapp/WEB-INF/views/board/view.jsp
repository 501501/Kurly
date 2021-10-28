<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/board/notice_in.css">
    <link rel="stylesheet" href="../resources/css/board/notice_in2.css">
    <script src="../resources/js/jquery-3.4.1.js"></script>
    <script src="../resources/js/add.js"></script>
    <c:import url="../temp/header.jsp"></c:import>
</head>
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <header id="header" class="fixed-top">
        <script>
            loadHTML("/header.html");
        </script>
    </header>


    <section>

        <div class="tit_page">
            <h2 class="tit">공지사항</h2>
            <p class="sub" style="padding: 20px 0;">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</p>
        </div>

        <div id="main">
            <div id="content">
                <div class="layout-wrapper">
                    <div class="xans-element- xans-myshop xans-myshop-couponserial ">
                        <table width="100%" text-align="center" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td>
                                        <table class="boardView" width="100%">
                                            <tbody>
                                                <tr>
                                                    <th scope="row" style="border:none;">제목</th>
                                                    <td>${dto.title}</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">작성자</th>
                                                    <td>${dto.writer}</td>
                                                </tr>
                                                <tr class="etcArea">
                                                    <td colspan="2">
                                                        <ul>
                                                            <li class="date ">
                                                                <strong class="th">작성일</strong> <span
                                                                    class="td">${dto.regDate}</span>
                                                            </li>
                                                            <li class="hit ">
                                                                <strong class="th">조회수</strong> <span
                                                                    class="td">${dto.hits}</span>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td text-align="right" class="eng" style="padding:5px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding:10px;" height="200" valign="top" id="contents">
                                        <table width="100%" style="table-layout:fixed">
                                            <tbody>
                                                <tr>
                                                    <td class="board_view_content" style="word-wrap:break-word;word-break:break-all" id="contents_1107" valign="top">
                                                    	${dto.contents}
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>



    </section>

    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>
    <c:import url="../temp/footer.jsp"></c:import>
</body>
</html>