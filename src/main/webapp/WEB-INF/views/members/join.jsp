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
	
	<form id="form" name="frmMember" method="post" action="./join">
	
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
				<div>asgdgasd</div>
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
			<div class="form-group">
				<button type="button" class="btn btn-default" onclick="address_searching()">주소검색</button>                               
			</div>
			<div class="form-group">           
				<input class="form-control" style="width: 40%;" placeholder="우편번호" name="addr1" id="addr1" type="text" readonly="readonly"/>        
			</div>
			<div class="form-group">
			    <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="addr2" id="addr2" type="text" readonly="readonly"/>
			</div>
			<div class="form-group">
			    <input class="form-control" placeholder="상세주소" name="addr3" id="addr3" type="text"/>
			</div>
			<div class="form-group">
			    <input class="form-control" placeholder="주소값" name="address" id="address" type="text" readonly="readonly" hidden="hidden"/>
			</div>
		</div>
		
		
		<div class="mb-3">
		  <label for="gender" class="form-label">성별</label>
		  <input type="checkbox" class="checkb m" value="m">
		  <span id="chbox_m">남자</span>
		  <input type="checkbox" class="checkb w" value="w">
		  <span id="chbox_w">여자</span>
		  <input type="checkbox" class="checkb n" value="n" checked>
		  <span id="cbox_n">선택안함</span>
		</div>
		
		<div class="mb-3">
		  <label for="birth_year">생년월일</label>			
		  <input type="text" name="birth" id="birth" pattern="[0-9]*" value label="생년월일" size="8" maxlength="6" placeholder="YYYYMMDD">
		</div>
		
		<hr>
		
		<table>
		  <tr class="reg_agree">
				<th>이용약관 동의
					<span class="ico">*</span>
				</th>
			<td>
			  <div class="checkbox_group">
				<div class="check">
					<label class="check_agree label_all_check label_block">
						<input type="checkbox" name="agree_allcheck" value="n">
						<span class="ico"></span>
						<strong>전체 동의합니다.</strong>
					</label>
					<p class="sub">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
				</div>
				
			
				<div class="check_view">
					<label class="check_agree label_block">
						<input type="checkbox" value="n" name="agree" required="" label="이용약관">
						<span class="ico"></span>이용약관 동의 <span class="sub">(필수)</span>
					</label>
					<a href="#none" class="link btn_link btn_agreement">약관보기 </a>
				</div>
				
				<div class="check_view">
					<label class="check_agree label_block">
						<input type="checkbox" id="private1" name="private1" value="n" required="" label="개인정보 수집·이용" checked="checked">
						<span class="ico"></span>개인정보 수집·이용 동의 <span class="sub">(필수)</span>
					</label>
					<a href="#none" class="link btn_link btn_essential">약관보기 </a>
				</div>
				
				<div class="check_view">
					<input type="hidden" id="consentHidden" name="consent[1]" value="n">
					<label class="check_agree label_block">
						<input type="checkbox" name="hiddenCheck" value="n">
						<span class="ico"></span>개인정보 수집·이용 동의 <span class="sub">(선택)</span>
					</label>
					<a href="#none" class="link btn_link btn_choice">약관보기 </a>
				</div>
				
				<div class="check_view">
					<label class="label_block check_agree">
						<input type="checkbox" name="marketing" value="n" onclick="marketingCheck()">
						<span class="ico"></span>무료배송, 할인쿠폰 등 혜택/정보 수신 동의 <span class="sub">(선택)</span>
					</label>
					<div class="check_event email_sms">
					<label class="label_block check_agree">
						<input type="checkbox" name="sms" value="n" >
						<span class="ico"></span>SMS
					</label>
					<label class="label_block check_agree">
						<input type="checkbox" name="mailling" value="n">
						<span class="ico"></span>이메일
					</label>
					</div>
					<p class="sms_info">
					동의 시 한 달간 [5% 적립] + [무제한 무료배송] <span class="sub">(첫 주문 후 적용)</span>
					</p>
				</div>
				
				<div class="check_view">
					<label class="check_agree label_block">
						<input type="checkbox" value="n" name="fourteen_chk" required="" label="만 14세 이상">
						<span class="ico"></span>본인은 만 14세 이상입니다. <span class="sub">(필수)</span>
					</label>
				</div>
			  </div>
			</td>
		  </tr>			
		</table>
		
		
		
		<hr>
		
		<div class="mb-3 my-4">
	    	<label class="form-label"></label>
	  		<button id="btn" type="submit" class="btn btn-primary">가입하기</button>
	  	</div>
	</form>
	
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
<script type="text/javascript" src="../resources/js/join.js"></script>
<script type="text/javascript" src="../resources/js/clause.js"></script>
</body>
</html>