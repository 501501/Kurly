<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/order/order.css">
    <link rel="stylesheet" href="../resources/css/order/order2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="../resources/js/jquery-3.4.1.js" type="text/javascript" text="javascript"></script>
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

        <div id="main">
            <div id="content">
                <div class="page_aticle aticle_type2">
                    <div id="snb" class="snb_cc">
                        <h2 class="tit_snb">고객센터</h2>
                        <div class="inner_snb">
                            <ul class="list_menu">
                                <li class="on">
                                    <a href="/kurly/board/list">공지사항</a>
                                </li>
                                <li>
                                    <a href="/kurly/service/faq">자주하는 질문</a>
                                </li>
                                <li>
                                    <a href="/kurly/mypage/mypage_qna">1:1 문의</a>
                                </li>
                                <li>
                                    <a href="/kurly/mypage/bulk_order">대량주문 문의</a>
                                </li>
                                <li>
                                    <a href="/kurly/mypage/offer">상품 제안</a>
                                </li>
                                <li>
                                    <a href="/kurly/mypage/echo_packing">에코포장 피드백</a>
                                </li>
                            </ul>
                        </div>
                        <a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span
                                class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
                    </div>
                    <div class="page_section">
                        <div class="head_aticle">
                            <h2 class="tit">대량주문 문의</h2>
                        </div>
                        <ul class="list_type1">
                            <li><span class="ico">·</span>
                                <p class="txt">최소 구매금액 100만원 이상 시 해당 서비스를 이용하실 수 있습니다. ( 기준 충족 시 다중 배송 가능 )</p>
                            </li>
                            <li><span class="ico">·</span>
                                <p class="txt">여러 주소지에 배송 주문 시, 주소지 1곳 당 결제금액이 4만원 미만일 경우 주소지당 개별 배송비가 발생 됩니다.</p>
                            </li>
                            <li><span class="ico">·</span>
                                <p class="txt">문의를 남겨주시면 빠른 시간 내에 상담 전화 드립니다. ( ☎ 1644 - 1108, 메일 : <a
                                        href="mailto:kurlygift@kurlycorp.com"
                                        class="txt_mail">kurlygift@kurlycorp.com</a> )</p>
                            </li>
                        </ul>
                        	<form id="frm" action="./bulk_order" method="post">
                            <div class="user_wrap">
                                <div class="reg_bulkorder">
                                    <table class="user_form">
                                        <tbody>
                                            <tr>
                                                <th scope="row">신청하는 분 이름 <span class="ico">*</span></th>
                                                <td>
                                                    <input type="text" id="name" class="inp_area" name="name" placeholder="신청하는 분 이름을 입력해주세요.">

                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">신청하는 분 연락처 <span class="ico">*</span></th>
                                                <td>
                                                	<input type="text" id="phone" name="phone" class="inp_area" placeholder="'-'없이 숫자만"> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">신청하는 분 이메일 <span class="ico">*</span></th>
                                                <td>
                                                    <input type="text" id="email" name="email" class="inp_area" placeholder="kurly@example.com">
                                                    <p class="txt_info_email">이메일 주소를 작성해주시면 원활한 소통이 가능합니다.</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">수령 희망일 <span class="ico">*</span></th>
                                                <td>
                                                    <div>
                                                        <span class="select_calendar">
                                                            <input type="date" id="pickupDate" name="pickupDate">
                                                        </span>
                                                    </div>
                                                    <div class="txt_warning">
                                                        수령 희망일이 명확하지 않을 경우, 가장 빠른 예상 일자를 선택바랍니다.<br>
                                                        대량 주문은 모두 택배로 배송되며, 희망 수령일은 화/수/목/금/토요일 중 선택 가능합니다.(일/월요일 제외)
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>배송지</th>
                                                <td>
                                                    <ul class="delivery_way">
                                                        <label class="label_radio checked">
                                                        	<input type="radio" name="address" value="several" id="delivery_way2" class="styled-radio-black" checked="checked">여러 곳으로 수령
                                                        </label>
                                                        <label class="label_radio">
                                                        	<input type="radio" name="address" value="one" id="delivery_way1" class="styled-radio-black">한 곳으로 수령
                                                        </label>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>문의 사항</th>
                                                <td>
                                                    <textarea class="user_textarea" name="inquiry"
                                                        id="inquery"></textarea>
                                                    <span class="txt_warning">원활한 상담을 위해 상품명, 수량, 상담전화 희망 시간 등을
                                                        적어주세요.</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="">주의 사항 </th>
                                                <td>
                                                    <div class="desc">
                                                        아래 경우 배송이 불가합니다.<br>
                                                        <ul class="txt_lst type_hyphen">
                                                            <li> 제주도 및 도서산간, 상품에 따른 배송 이외지역의 경우</li>
                                                            <li> 수령 배송지가 명확하지 않을 경우</li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="user_wrap user_form">
                                <h1 class="tit_head">개인정보 수집·이용 동의 <span class="ico">*</span></h1>
                                <hr class="hr_purple">
                                <div class="desc">
                                    <div class="reg_agree order_agree">
                                        <div class="bg_dim"></div>

                                        <div class="check check_view">
                                            <label class="inp_check label_check">
                                                <input type="checkbox" name="_agree">
                                                <span class="txt_checkbox">개인정보 수집·이용 동의<span
                                                        class="txt_essential">(필수)</span></span>
                                            </label>
                                            <a href="#none" class="link_agree link_essential">보기 &gt;</a>
                                        </div>

                                        <div class="layer layer_essential">
                                            <div class="inner_layer">
                                                <h4 class="tit_layer">개인정보 수집·이용 동의(필수)</h4>
                                                <div class="box_tbl">
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <caption class="screen_out">개인정보의 수집 및 이용목적</caption>
                                                        <colgroup>
                                                            <col width="30%">
                                                            <col width="35%">
                                                            <col width="35%">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="row">수집 목적</th>
                                                                <th scope="row">수집 항목</th>
                                                                <th scope="row">보유 기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>대량 주문문의</td>
                                                                <td>신청자 이름, 신청자 연락처, 신청자 이메일</td>
                                                                <td class="emph">문의 완료 후 30일 내</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="txt_service">* 서비스 제공을 위해서 필요한 최소한의 개인정보입니다. 동의를 해 주셔야 서비스를
                                                    이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다.</p>
                                                <button type="button" class="btn_ok">확인</button>
                                                <button type="button" class="btn_close"><span class="screen_out">레이어
                                                        닫기</span></button>
                                            </div>
                                        </div>

                                    </div>
                                    <hr class="hr_grey">
                                    <div align="center">
                                        <button class="bhs_button">문의하기</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <script src="/common_js/calendar.js?ver=1.41.1"></script>
                <script>
                    var processing = false;

                    // 레이어 열기,닫기
                    $('.check .link_agree').on('click', function (e) {
                        e.preventDefault();
                        var $layer1 = $(this).is('.link_essential');
                        var $layer2 = $(this).is('.link_choice');
                        var $target = $(this).parents('.reg_agree').find('.layer');
                        var bgDimd = $('.bg_dim');

                        var $essential = $(this).parents('.reg_agree').find('.layer_essential');
                        var $choice = $(this).parents('.reg_agree').find('.layer_choice');

                        if ($layer1 == true) {
                            $essential.show();
                            bgDimd.show();
                        } else if ($layer2 == true) {
                            $choice.show();
                            bgDimd.show();
                        }
                        $target.css({
                            /*top: $(window).scrollTop() - $('#content').offset().top + ($(window).height()/2) - ($target.height()/2) - 50*/
                            'margin-top': -$target.height() / 2
                        });
                    });
                    $('.reg_agree .btn_ok,.reg_agree .btn_close').on('click', function (e) {
                        e.preventDefault();
                        $(this).parents('.layer').hide();
                        $('.bg_dim').hide();
                    });

                    $(".label_radio").on("click", function () {
                        $(this).find('input[type=radio]').prop('checked');
                        if ($(this).find('input').attr('name') === 'settlekind') {
                            $(this).parents('table').find(".label_radio").removeClass('checked');
                        } else {
                            $(this).parent().find(".label_radio").removeClass('checked');
                        }
                        $(this).addClass('checked');
                    });

                    $(".label_check").on("click", function () {
                        if (!$(this).find('input[type=checkbox]').is(':checked')) {
                            $(this).find('input[type=checkbox]').prop('checked', 'checked');
                            $(this).addClass('checked');
                        } else {
                            $(this).find('input[type=checkbox]').prop('checked', '');
                            $(this).removeClass('checked');
                        }
                    });

                    function checkRequied() {
                        var form = document.frm;


                        $("#receive_date").val($("#receive_date_anchor").text())

                        if ($('input[name="name"]').val() == '') {
                            $('input[name="name"]').focus();
                            alert('신청하는 분 이름을 입력해주세요.');
                            return false;
                        }

                        if ($('input[name="phoneOrder"]').val() == '') {
                            $('input[name="phoneOrder"]').focus();
                            alert('신청하는 분 연락처를 입력해주세요.');
                            return false;
                        }

                        if ($('input[name="email"]').val() == '') {
                            $('input[name="email"]').focus();
                            alert('신청하는 분 이메일을 입력해주세요.');
                            return false;
                        }

                        if ($('input[name="receive_date"]').val() == '') {
                            $('input[name="receive_date"]').focus();
                            alert('수령 희망일을 선택해 주세요.');
                            return false;
                        }

                        if (!$('input[name="_agree"]').is(':checked')) {
                            $('input[name="_agree"]').focus();
                            alert('약관 동의는 필수입니다.');
                            return false;
                        }

                        if (processing == false) {
                            processing = true;
                        } else {
                            return false;
                        }

                        return true;
                    }

                    // KM-1483 Amplitude 연동
                    KurlyTracker.setScreenName('bulk_order_inquiry');
                </script>
            </div>
        </div>

    </section>

    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>
    </div>
	<script type="text/javascript" src="../resources/js/bulk.js"></script>
	<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>