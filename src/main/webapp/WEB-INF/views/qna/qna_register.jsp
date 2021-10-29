<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="../resources/css/11_in.css">
    <link rel="stylesheet" href="../resources/css/11_in_2.css">
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
                    <div class="page_section section_qna">
                        <div class="head_aticle">
                            <h2 class="tit">1:1 문의</h2>
                        </div>

                        <div class="xans-board-write">
                        	<form action="./mypage_qna_register" name="fm" id="fm" method="post" enctype="multipart/form-data" style="height: 100%;">
                                <input type="hidden" name="mode" value="add_qna">
                                <input type="hidden" name="itemcd" value="">
                                <input type="hidden" name="sno" value="0">
                                <table id="table_after" class="boardWrite2" width="100%">
                                    <colgroup>
                                        <col width="14%" text-align="right">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th class="input_txt">제목</th>
                                            <td>
                                                <select name="category" required="" fld_esssential="" label="질문유형"
                                                    class="select"
                                                    onclick="KurlyTracker.setAction('select_personal_inquiry_case_list').sendData();"
                                                    onchange="KurlyTracker.setAction('select_personal_inquiry_case_value').sendData();">
                                                    <option value="0">선택해주세요.</option>
												    <option value="배송지연/불만">배송지연/불만</option>
												    <option value="컬리패스 (무료배송)">컬리패스 (무료배송)</option>
												    <option value="반품문의">반품문의</option>
												    <option value="A/S문의">A/S문의</option>
												    <option value="환불문의">환불문의</option>
												    <option value="주문결제문의">주문결제문의</option>
												    <option value="회원정보문의">회원정보문의</option>
												    <option value="취소문의">취소문의</option>
												    <option value="교환문의">교환문의</option>
												    <option value="상품정보문의">상품정보문의</option>
												    <option value="기타문의">기타문의</option>
                                                </select><br>
                                                <input type="text" id="title" name="title" style="width:100%" required=""
                                                    fld_esssential="" label="제목" value=""
                                                    onfocus="KurlyTracker.setAction('select_personal_inquiry_title').sendData();">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="input_txt">주문번호</th>
                                            <td>
                                                <input type="text" id="orderNum" name="orderNum" style="width:25%" value=""
                                                    readonly="readonly" onclick="$(this).blur()"
                                                    onfocus="$(this).blur()">
                                                <input type="button" class="bhs_button yb" id="order_inquiry" value="주문조회" style="float:none; line-height:27px; width:100px;">
                                                <div style="position:relative;z-index:1">
                                                    <iframe id="ifm_order" frameborder="0" scrolling="no"
                                                        style="display:none;position:absolute;width:560px;height:380px;background-color:#fff;position:absolute;left:0;top:0;border:1px solid #000"></iframe>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="input_txt">이메일</th>
                                            <td>
                                            <input type="text" id="email" value="${member.email}" readonly="readonly">
											<input type="hidden" id="email_ck" name="email_ck" size="26" value="n">
											
                                                <span class="noline smalle" style="padding-left:10px">
                                                <input type="checkbox" id="email_ck_hidden" name="email_ck_hidden">
                                                <span style="font-size:8pt;">답변수신을 이메일로 받겠습니다.</span></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="input_txt">문자메시지</th>
                                            <td>
                                                <input type="text" id="phone" value="${member.phone_num}" readonly="readonly">
                                                <span class="noline smalle" style="padding-left:10px">
                                                <input type="checkbox" id="phone_ck_hidden" name="phone_ck_hidden">
                                                <input type="hidden" id="phone_ck" name="phone_ck" value="n">
                                                <span style="font-size:8pt;">답변수신을 문자메시지로 받겠습니다.</span></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="input_txt">내용</th>
                                            <td class="edit_area" style="position: relative;">

                                                <style>
                                                    #qnaNotice .qna_goods {
                                                        display: none
                                                    }
                                                </style>
                                                <div id="qnaNotice">
                                                    <div class="inner_qnaNotice">
                                                        <div class="notice_qna">
                                                            <!--
            1:1문의하기에 들어가는 class="qna_public"
            상품문의하기에 들어가는 class="qna_goods"
            -->
                                                            <strong class="tit qna_public">1:1 문의 작성 전 확인해주세요!</strong>
                                                            <strong class="tit qna_goods">상품문의 작성 전 확인해 주세요!</strong>

                                                            <dl class="list qna_goods">
                                                                <dd>
                                                                    <span>답변은 영업일 기준 2~3일 소요됩니다.</span>
                                                                    <span>해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수
                                                                        있습니다.</span>
                                                                    <span>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에
                                                                        남겨주세요.</span>
                                                                </dd>
                                                            </dl>

                                                            <dl class="list qna_goods">
                                                                <dt>제품</dt>
                                                                <dd>
                                                                    <span>입고일: 품절 상품 입고 일이 확정된 경우, 섬네일에 기재되어 있습니다.(종 모양을
                                                                        클릭하여, 재입고 알람 설정 가능)</span>
                                                                    <span>제품 상세정보: 영양성분 및 함량, 용량, 보관 및 취급 방법 등 제품 정보는 상세
                                                                        이미지 또는 상세정보에서 확인 가능합니다.</span>
                                                                </dd>
                                                            </dl>

                                                            <dl class="list qna_public">
                                                                <dt>반품 / 환불</dt>
                                                                <dd>
                                                                    <span>제품 하자 혹은 이상으로 반품 (환불)이 필요한 경우 사진과 함께 구체적인 내용을
                                                                        남겨주세요.</span>
                                                                </dd>
                                                            </dl>

                                                            <dl class="list" id="branchByVersion15">
                                                                <dt>주문취소</dt>
                                                                <dd class="old" style="display:none">
                                                                    <!-- 구버전 분기처리 -->
                                                                    <span>샛별 지역 : 배송일 전날 19시까지
                                                                        <br>
                                                                        택배 지역 : 배송일 전날 18시까지
                                                                        <br>
                                                                        고객행복센터(1644-1107)/ 1:1문의 게시판/ 카카오톡(마켓컬리) 으로 취소
                                                                        요청 바랍니다.
                                                                    </span>
                                                                    <span>생산이 시작된 이후에는 취소가 불가능 한 점 고객님의 양해
                                                                        부탁드립니다.</span>
                                                                    <span>일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</span>
                                                                    <span>주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매
                                                                        해주세요.</span>
                                                                    <span>비회원 주문건의 경우 1:1문의 게시판 접수가 불가하기에
                                                                        고객행복센터(1644-1107), 카카오톡(마켓컬리) 로 취소 요청
                                                                        부탁드립니다.</span>
                                                                </dd>
                                                                <dd class="new">
                                                                    <span>
                                                                        배송 단계별로 주문취소 방법이 상이합니다.
                                                                        <br>
                                                                        [입금확인] 단계 : [마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소 가능
                                                                        <br>
                                                                        [입금확인] 이후 단계 : 고객행복센터로 문의
                                                                    </span>
                                                                    <br>
                                                                    <span>생산이 시작된 [상품 준비중] 이후에는 취소가 제한되는 점 고객님의 양해
                                                                        부탁드립니다.</span>
                                                                    <span>비회원은 모바일 App 또는 모바일 웹사이트에서 [마이컬리 &gt; 비회원 주문
                                                                        조회 페이지] 에서 취소가 가능합니다.</span>
                                                                    <span>일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</span>
                                                                    <span>주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매
                                                                        해주세요.</span>
                                                                </dd>
                                                            </dl>

                                                            <dl class="list">
                                                                <dt>배송</dt>
                                                                <dd>
                                                                    <span>주문 완료 후 배송 방법(샛별 / 택배)은 변경이 불가능합니다.</span>
                                                                    <span>배송일 및 배송시간 지정은 불가능합니다. (예약배송 포함)</span>
                                                                    <p class="info">※ 전화번호, 이메일, 주소, 계좌번호 등의 상세 개인정보가 문의
                                                                        내용에 저장되지 않도록 주의해 주시기 바랍니다.</p>
                                                                </dd>
                                                            </dl>
                                                        </div>
                                                    </div>
                                                </div>
                                                <script>
                                                    var qnaNotice = new Vue({
                                                        el: '#qnaNotice',
                                                        data: {
                                                            getData: null,
                                                            layerOn: true
                                                        },
                                                        methods: {
                                                            update: function () {
                                                                var $self = this;
                                                                $.ajax({
                                                                    type: 'GET',
                                                                    url: campaginUrl +
                                                                        'pc/notice/qna_info.html',
                                                                    datatype: 'html',
                                                                    async: true,
                                                                }).done(function (result) {
                                                                    $self.getData = result;
                                                                });
                                                            }
                                                        }
                                                    });
                                                    $(document).ready(function () {
                                                        qnaNotice.update();
                                                    });
                                                </script>

                                                <textarea name="contents" style="width:100%;height:474px;"
                                                    class="editing_area" required="" fld_esssential="" label="내용"
                                                    onfocus="KurlyTracker.setAction('select_personal_inquiry_text').sendData();"></textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="input_txt">이미지</th>
                                            <td>
                                                <table width="95%" id="table" cellpadding="0" cellspacing="0" border="0"
                                                    style="border:solid 1px #f4f4f4; border-collapse:collapse;">
                                                    <tbody>
                                                        <tr id="tr_0">
                                                            <td width="20" nowrap="" text-align="center">1</td>
                                                            
                                                            <td width="100%">
                                                            	<span id="fileAddResult">
                                                                <input type="file" name="files2" style="width:50%" class="linebg">
                                                                <a href="javascript:add()"><img src="../resources/img/btn_upload_plus.jpg" text-align="absmiddle"></a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td height="2"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div width="100%" style="padding:5px;" class="stxt">
                                                    - 파일은 최대 5개까지 업로드가 지원됩니다.<br>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <table width="100%">
                                    <tbody>
                                        <tr>
                                            <td text-align="right" style="padding-top:5px; border:none;" id="avoidDbl">
                                                <input type="button" id="submit" class="bhs_button yb" value="저장"
                                                    style="float:none;">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
                        </div>

                    </div>
                </div>
                <script type="text/javascript">
                    function chkSubmitData(form) {
                        if (chkForm(form)) {
                            KurlyTracker.setAction('submit_personal_inquiry_success').sendData();
                            return true;
                        } else {
                            return false;
                        }
                    }

                    function order_open() {
                        KurlyTracker.setAction('select_personal_inquiry_order_list').sendData();

                        var divEl = document.getElementById('ifm_order');
                        divEl.style.display = "block";
                        if (divEl.src == '') divEl.src = "mypage_qna_order.php";

                        // KM-1483 Amplitude 연동
                        KurlyTracker.setScreenName('personal_inquiry_writing_order_history_selection');
                    }

                    function order_close() {
                        var divEl = document.getElementById('ifm_order');
                        divEl.style.display = "none";
                    }

                    function order_put(ordno) {
                        // KMF-299 선택한 주문번호가 기존 주문 번호와 다를때만 트래킹 처리
                        if (parseInt(document.fm.ordno.value, 10) !== parseInt(ordno, 10)) {
                            KurlyTracker.setAction('select_personal_inquriry_order_number').sendData();
                        }

                        document.fm.ordno.value = ordno;
                        order_close();
                    }

                    function add() {
                        var table = document.getElementById('table');
                        var reviewFileNum = "5";
                        if (table.rows.length >= parseInt(reviewFileNum)) {
                            alert("업로드는 최대 " + reviewFileNum + "개만 지원합니다");
                            return;
                        }
                        var tr_num = table.rows.length;
                        oTr = table.insertRow(table.rows.length);
                        oTr.id = "tr_" + (tr_num);
                        oTd1 = oTr.insertCell(0);
                        oTd1.style.textAlign = "center";
                        oTd2 = oTr.insertCell(1);
                        tmpHTML =
                            "<input type=file name='file[]' style='width:50%' class=line> <a href=\"javascript:del('" +
                            "tr_" + (tr_num) +
                            "')\"><img src='../resources/img/btn_upload_minus.webp' align=absmiddle></a>";
                        oTd2.innerHTML = tmpHTML;
                        calcul();
                    }

                    function del(index, ncode) {
                        var table = document.getElementById('table');
                        for (i = 0; i < table.rows.length; i++)
                            if (index == table.rows[i].id) table.deleteRow(i);
                        calcul();
                    }

                    function calcul() {
                        var table = document.getElementById('table');
                        for (var i = 0; i < table.rows.length; i++) {
                            table.rows[i].cells[0].innerHTML = i + 1;
                        }
                    }

                    // KM-1483 Amplitude 연동
                    KurlyTracker.setScreenName('personal_inquiry_writing');
                </script>
            </div>
        </div>

    </section>
	
	<input type="text" name="id" value="${member.id}" hidden="hidden">
	
    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>
    <c:import url="../temp/footer.jsp"></c:import>
<script type="text/javascript" src="../resources/js/qna_register.js"></script>
</body>
</html>