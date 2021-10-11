<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<h1>회원가입 페이지</h1>
	
	<form id="form" name="frmMember" method="post" action="join">
	
		<div class="mb-3">
		  <table>
			<tr>		  		  
			  	<td>
			  		<label for="id" class="form-label">아이디</label>
			  		<input type="text" name="id" class="form-control" onkeydown="onlyAlphabet(this)" id="id">
				</td>
			  	<td>
					<button type="button" name="중복확인" id="idCheck" class="btn btn-warning" onclick="doubleCheck()">중복확인</button>		  		
			  	</td>	
		  	</tr>
		  	<tr>
				<td>
				<div id="idResult1"></div>
				<div id="idResult2"></div>
				<div></div>
				</td>
		  	</tr>
		  </table>
		</div>
		
		<div class="mb-3">
		  <label for="pw" class="form-label">비밀번호</label>
		  <input type="password" name="pw" class="form-control not pw" id="pw">
		  <div id="pwExplain1"></div>
		  <div id="pwExplain2"></div>
		  <div id="pwExplain3"></div>		
		</div>
		
		<div class="mb-3">
		  <label for="pw2" class="form-label">비밀번호확인</label>
		  <input type="password" name="pw2" class="form-control not pw" id="pw2">
		  <div id="pw2Explain"></div>
		</div>
		
		<div class="mb-3">
		  <label for="name" class="form-label">이름</label>
		  <input type="text" name="name" class="form-control not name" id="name">
		</div>
		
		<div class="mb-3">
		  <label for="email" class="form-label">이메일</label>
		  <input type="text" name="email" class="form-control not email" id="email">
		  <button type="button" name="이메일체크" id="eCheck" onclick="emailCheck()">중복확인</button>
		  <div id="emailResult"></div>
		</div>
		
		<div class="mb-3">
		  <label for="phone_num" class="form-label">휴대폰</label>
		  <input type="text" name="phone_num" class="form-control not phone_num" id="phone_num">		  		  
		</div>
		
		<div class="mb-3">		  
			<div class="form-group">
				<button type="button" class="btn btn-default" onclick="address_searching()">주소검색</button>                               
			</div>
			<div class="form-group">           
				<input class="form-control" style="width: 40%;" placeholder="우편번호" name="address_post" id="address_post" type="text" readonly="readonly"/>        
			</div>
			<div class="form-group">
			    <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="addr2" id="addr2" type="text" readonly="readonly"/>
			</div>
			<div class="form-group">
			    <input class="form-control" placeholder="상세주소" name="addr3" id="addr3" type="text"/>
			</div>
			<div class="form-group">
			    <input class="form-control" placeholder="주소값" name="address_loca" id="address_loca" type="text" readonly="readonly" hidden="hidden"/>
			</div>
		</div>
		
		<div class="mb-3" value>
		  <label for="gender" class="form-label">성별</label>
		  <input type="checkbox" class="checkb m" name="gender" value="m">
		  <span id="chbox_m">남자</span>
		  <input type="checkbox" class="checkb w" name="gender" value="w">
		  <span id="chbox_w">여자</span>
		  <input type="checkbox" class="checkb n" name="gender" value="n" checked>
		  <span id="cbox_n">선택안함</span>
		</div>
		
		<div class="mb-3">
		  <label for="birth_date">생년월일</label>			
		  <input type="text" name="birth_date" id="birth_date" pattern="[0-9]*" value label="생년월일" size="8" maxlength="8" placeholder="YYYYMMDD">
		</div>

		<div class="mb-3">
			<label for="recommender">추가입력 사항</label>
			<input type="radio" name="rcm" id="recomm" class="rem_ck"/><span>추천인 아이디</span>
			<input type="radio" name="rcm" id="pEvnet" class="rem_ck"/><span>참여 이벤트명</span>
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
		
		<table>
        <tr>
            <td rowspan="8" style="font-size:small;">이용약관동의  <span style="color:red; font-size:small;">*</span></td>
            <td>
                <input type="checkbox" name="checkAll" class="checkAll cbx" />
                <label for="checkAll">전체 동의합니다.</label>
            </td>

            <tr>
                <td>
                    <input type="checkbox" name="check-clause" class="check-view cbx check-necessary" />
                    <label>이용약관 동의 <span style="color:gray;">(필수)</span></label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" name="check-clause" class="check-view cbx check-necessary" />
                    <label>개인정보 수집이용 동의 <span style="color:gray;">(필수)</span></label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" name="check-clause" class="check-view cbx" />
                    <label>개인정보 수집이용 동의 <span style="color:gray;">(선택)</span></label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" name="clause_private" class="check-view cbx market-check" id="cbx-com" value="1" />
                    <label>무료배송, 할인쿠폰 등 혜택/정보 수신 동의 <span style="color:gray;">(선택)</span></label>
                    <div>
                        <span>&nbsp; &nbsp;</span>
                        <input type="checkbox" name="clause_sms" class="check-view cbx market-check dot" value="1"/>
                        <label for="check-clause">SMS</label>

                        <input type="checkbox" name="clause_email" class="check-view cbx market-check dot" value="1"/>
                        <label for="check-clause">이메일</label>                        
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" name="check-clause" class="check-view cbx check-necessary" />
                    <label>본인은 만 14세 이상입니다.<span style="color:gray;">(필수)</span></label>
                </td>
            </tr>

        </tr>
    </table>

		<hr>
		
		<div class="mb-3 my-4">
	    	<label class="form-label"></label>
	  		<button id="btn-join" type="button" class="btn btn-primary">가입하기</button>
	  	</div>

	</form>
	
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
<script type="text/javascript" src="../resources/js/join.js"></script>
<script type="text/javascript" src="../resources/js/addressSelect.js"></script>
<script type="text/javascript" src="../resources/js/check.js"></script>
<script type="text/javascript" src="../resources/js/clause.js"></script>
</body>
</html>