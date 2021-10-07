<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>myInfo Page입니다</h1>
	
	<a href="../">홈으로</a>
	<hr>
		
	<form method="post" action="update" id="frm">
		<div>
			<label for="id">아이디</label>
			<input type="text" name="id" id="id" class="" value="${member.id}" readonly="readonly" />
		</div>
		
		<div>
			<label for="password">현재 비밀번호</label>
			<input type="password" name="password" id="password" class="" />
		</div>
		
		<div>
			<label for="pw">새 비밀번호</label>
			<input type="password" name="pw" id="pw" class="" />
		</div>
		
		<div>
			<label>새 비밀번호 확인</label>
			<input type="password" name="pw2" id="pw2" class="" />
		</div>
	
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" class="" value="${member.name}" readonly="readonly" />
		</div>
		
		<div>
			<label for="email">이메일</label>
			<input type="text" name="email" id="email" class="" value="${member.email}" />
			<button type="button" id="btn-idcheck">중복확인</button>
		</div>
		
		<div>
			<label for="phone_num">휴대폰</label>
			<input type="text" name="phone_num" id="phone_num" class="" value="${member.phone_num}" readonly="readonly"/>
		</div>
		
		<div>
			<label for="gender">성별</label>
			<input type="checkbox" name="gender" id="gender_man" class="genders" 
				<c:if test="${member.gender eq 'm'}"> checked="checked"</c:if> value="m" readonly="readonly" /><span>남자</span>
			<input type="checkbox" name="gender" id="gender_woman" class="genders" 
				<c:if test="${member.gender eq 'w'}"> checked="checked"</c:if> value="w" readonly="readonly" /><span>여자</span>
			<input type="checkbox" name="gender" id="gender_no" class="genders"
				<c:if test="${member.gender eq 'n'}"> checked="checked"</c:if> value="n" readonly="readonly" /><span>선택안함</span>
		</div>

      
		<div>
			<label for="birth_date">생년월일</label>
			<input type="text" name="birth_date" id="birth_date" class="" value="${member.birth_date}" size="6" maxlength="8" placeholder="YYYYMMDD" readonly="readonly" />
		</div>
		
		<div>
			<label for="recommender">추천인 아이디</label>
			<input type="text" name="recommender" id="recommender" class="" value="${member.recommender}" readonly="readonly" />
		</div>
		
		<div>
			<label for="clause_private">선택약관 동의</label>
			<input type="checkbox" name="clause_private" id="clause_private" class=""
				<c:if test="${member.clause_private eq 1}"> checked="checked" </c:if> value="1" /> <span>개인정보 수집이용 동의 <span>(선택)</span></span>
		</div>
		
		<hr>
		
		<div>
			<label for="clause_ad">이용약관 동의</label>
			<input type="checkbox" name="clause_ad" id="clause_ad" class="market-check" /><span>무료배송, 할인쿠폰 등 혜택/정보 수신 동의<span>(선택)</span></span>
		</div>
		
		<div>
            <span>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</span>
            <input type="checkbox" name="clause_sms" class="market-check check-part" 
            	<c:if test="${member.clause_sms eq 1}"> checked="checked" </c:if> value="1"/>
            <label for="check-clause">SMS</label>

            <input type="checkbox" name="clause_email" class="market-check check-part" 
            <c:if test="${member.clause_email eq 1}"> checked="checked" </c:if> value="1"/>
            <label for="check-clause">이메일</label>                        
       </div>
       	
		<hr>
		
		<a href="#" id="btn-delId" data-value="${member.id}">탈퇴하기</a>
		<button type="button" id="btn-updateId">회원정보 수정</button>
	</form>
	
	
<script type="text/javascript" src="../resources/js/myInfo.js"></script>	
</body>
</html>