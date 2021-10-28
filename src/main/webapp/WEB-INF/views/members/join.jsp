<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <link rel="stylesheet" href="../../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/member/join.css">
    <script src="../../resources/js/jquery-3.4.1.js"></script>
    <script src="../../resources/js/add.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
	
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>
    <c:import url="../temp/header.jsp"></c:import>

    <div class="tit">
        <h2>회원가입</h1>
    </div>

    <div class="con">
        <div class="member_join">
            <div class="sub_text clearfix">
                <p class="page_sub txt"><span class="ico">*</span>필수입력사항</p>
            </div>
            <hr class="top">
            <form id="form" name="frmMember" method="post" action="join">
                <div class="mb-3">
                    <table>
                        <tr>
                            <th>
                                <label for="id" class="form-label txt">아이디</label>
                                <span class="ico">*</span>
                            </th>
                            <td>
                                <input type="text" name="id" class="form-control" onkeydown="onlyAlphabet(this)" id="id"
                                    placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
                                <button type="button" name="중복확인" id="idCheck" class="btn btn-warning"
                                    onclick="doubleCheck()">중복확인</button>
                                <div id="idResult1"></div>
                                <div id="idResult2"></div>
                                <div></div>

                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label for="pw2" class="form-label txt">비밀번호</label>
                                <span class="ico">*</span>
                            </th>
                            <td>
                                <input type="password" name="pw2" class="form-control not pw" id="pw2"
                                    placeholder="비밀번호를 입력해주세요">
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <label for="pw2" class="form-label txt">비밀번호 확인</label>
                                <span class="ico">*</span>
                            </th>
                            <td>
                                <input type="password" name="pw2" class="form-control not pw" id="pw2" placeholder="비밀번호를 입력해주세요">
                                <div id="pw2Explain"></div>
                            </td>
                        </tr>
                        

                        <tr>
                            <th>
                                <label for="name" class="form-label txt">이름</label>
                                <span class="ico">*</span>
                            </th>
                            <td>
                                <input type="text" name="name" class="form-control not name" id="name"
                                    placeholder="이름을 입력해주세요">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label for="email" class="form-label txt">이메일</label>
                            </th>
                            <td>
                                <input type="text" name="email" class="form-control not email" id="email"
                                    placeholder="예 : marketkurly@kurly.com ">
                                <button type="button" name="이메일체크" id="eCheck" onclick="emailCheck()">중복확인</button>
                                <div id="emailResult"></div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label for="address" class="form-label txt">주소</label>
                            </th>
                            <td>
                                <div class="form-group">
                                    <button type="button" class="btn btn-default" onclick="address_searching()"
                                        id="addressSearch">주소검색</button>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" style="width: 40%;" placeholder="우편번호"
                                        name="address_post" id="address_post" type="text" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="addr2"
                                        id="addr2" type="text" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="상세주소" name="addr3" id="addr3"
                                        type="text" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="주소값" name="address_loca" id="address_loca"
                                        type="text" readonly="readonly" hidden="hidden" />
                                    <p class="txt_guide">
                                        <span class="txt txt_case1">배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
                                    </p>
                                </div>
                            </td>
                        </tr>
                        <tr value>
                            <th>
                                <label for="gender" class="form-label txt">성별</label>
                            </th>
                            <td class="gender">
                                <label>
                                    <input type="radio" class="checkb m" name="gender" value="m">
                                    <span id="chbox_m" class="ico"></span>남자
                                </label>
                                <label>
                                    <input type="radio" class="checkb w" name="gender" value="w">
                                    <span id="chbox_w" class="ico"></span>여자
                                </label>
                                <label>
                                    <input type="radio" class="checkb n" name="gender" value="n" checked>
                                    <span id="cbox_n" class="ico"></span>선택안함
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label for="birth_date" class="txt">생년월일</label>
                            </th>

                            <td>
                                <div class="birth_day">
                                    <input type="text" name="birth_year" id="birth_year" pattern="[0-9]*" value=""
                                        label="생년월일" size="4" maxlength="4" placeholder="YYYY">
                                    <span class="bar"></span>
                                    <input type="text" name="birth[]" id="birth_month" pattern="[0-9]*" value=""
                                        label="생년월일" size="2" maxlength="2" placeholder="MM">
                                    <span class="bar"></span>
                                    <input type="text" name="birth[]" id="birth_day" pattern="[0-9]*" value=""
                                        label="생년월일" size="2" maxlength="2" placeholder="DD">
                                </div>
                                <p class="txt_guide">
                                    <span class="txt bad"></span>
                                </p>
                            </td>
                        </tr>


                    </table>
                </div>



                <!-- ?? -->
                <div class="mb-3">
                    <div>
                        <input type="text" name="recommender" id="writeValue" hidden="hidden" />
                    </div>
                </div>
                <div>
                    <!-- 배송 유형 -->
                    <input type="text" name="shipping_type" value="배송유형" hidden="hidden">
                    <!-- 기본 배송지 여부 -->
                    <input type="text" name="default_type" value="y" hidden="hidden">
                    <!-- 지정 배송지 여부 -->
                    <input type="text" name="check_type" value="y" hidden="hidden">
                </div>
                <hr>
                <!-- ?? -->



                <!-- 이용약관동의 
                .0 -->
                <table>
                    <tr class="reg_agree">
                        <th rowspan="8" class="txt">
                            이용약관동의<span class="ico">*</span>
                        </th>
                        <td>
                            <div class="check">
                                <label class="check_agree label_all_check label_block">
                                    <input type="checkbox" name="checkAll" class="checkAll cbx" />
                                    <span class="ico"></span>
                                    전체 동의합니다.
                                </label>
                                <p class="sub">
                                    선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.
                                </p>
                            </div>
                            <div class="check_view">
                                <label class="check_agree label_all_check label_block agree">
                                    <input type="checkbox" name="check-clause" class="check-view cbx check-necessary" />
                                    <span class="ico"></span>
                                    이용약관 동의
                                    <span class="sub">(필수)</span>
                                </label>
                                <a href="#none" class="link btn_link btn_agreement">
                                    약관보기
                                </a>
                            </div>


                            <div class="check_view">
                                <label class="check_agree label_all_check label_block agree">
                                    <input type="checkbox" name="check-clause" class="check-view cbx check-necessary" />
                                    <span class="ico"></span>
                                    개인정보 수집이용 동의
                                    <span class="sub">(필수)</span>
                                </label>
                                <a href="#none" class="link btn_link btn_agreement">
                                    약관보기
                                </a>
                            </div>

                            <div class="check_view">
                                <label class="check_agree label_all_check label_block agree">
                                    <input type="checkbox" name="check-clause" class="check-view cbx check-necessary" />
                                    <span class="ico"></span>
                                    개인정보 수집이용 동의
                                    <span class="sub">(선택)</span>
                                </label>
                                <a href="#none" class="link btn_link btn_agreement">
                                    약관보기
                                </a>
                            </div>

                            <div class="check_view">
                                <label class="label_block check_agree ">
                                    <input type="checkbox" name="clause_private" class="check-view cbx market-check"
                                        id="cbx-com" value="1">
                                    <span class="ico"></span>
                                    무료배송, 할인쿠폰 등 혜택/정보 수신 동의
                                    <span class="sub">(선택)</span>
                                </label>

                                <div class="check_event email_sms">
                                    <label class="label_block check_agree ">
                                        <input type="checkbox" name="clause_sms" class="check-view cbx market-check dot"
                                            value="1">
                                        <span class="ico"></span>SMS
                                    </label>
                                    <label class="label_block check_agree ">
                                        <input type="checkbox" name="clause_email"
                                            class="check-view cbx market-check dot" value="1">
                                        <span class="ico"></span>이메일
                                    </label>
                                </div>
                                <p class="sms_info">
                                    동의 시 한 달간 [5% 적립] + [무제한 무료배송]
                                    <span class="sub">(첫 주문 후 적용)</span>
                                </p>
                            </div>
                        </td>




                    <tr>
                        <td>
                            <label class="check_agree label_all_check label_block">
                                <input type="checkbox" name="check-clause" class="check-view cbx check-necessary" />
                                <span class="ico"></span>
                                본인은 만 14세 이상입니다.
                            </label>
                        </td>
                    </tr>


                </table>

                <hr class="under">

                <div class="mb-3 my-4 form_footer">
                    <button id="btn-join" type="button" class="btn active btn-primary btn_join">가입하기</button>
                </div>
            </form>

            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <script type="text/javascript" src="../resources/js/join.js"></script>
            <script type="text/javascript" src="../resources/js/addressSelect.js"></script>
            <script type="text/javascript" src="../resources/js/check.js"></script>
            <script type="text/javascript" src="../resources/js/clause.js"></script>
        </div>
    </div>

    <footer id="footer" class="fixed-bottom">
        <script>
            loadHTML("/footer.html");
        </script>
    </footer>


</body>

</html>