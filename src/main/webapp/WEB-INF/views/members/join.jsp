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
	
	<form id="form" name="frmMember" method="post" action="/members/join">
	
		<div class="mb-3">
		  <label for="id" class="form-label">아이디</label>
		  <input type="text" name="id" class="form-control" onkeydown="onlyAlphabet(this)" id="id">
		  <button type="button" id="idCheck" value=0>중복확인</button>
		  <div id="idResult1"></div>
		  <div id="idResult2"></div>
		</div>
		
		<div class="mb-3">
		  <label for="pw" class="form-label">비밀번호</label>
		  <input type="password" name="pw" class="form-control not pw" id="pw">
		</div>
		
		<div class="mb-3">
		  <label for="pw2" class="form-label">비밀번호확인</label>
		  <input type="password" name="pw2" class="form-control not pw" id="pw2">
		</div>
		
		<div class="mb-3">
		  <label for="name" class="form-label">이름</label>
		  <input type="text" name="name" class="form-control not name" id="name">
		</div>
		
		<div class="mb-3">
		  <label for="email" class="form-label">이메일</label>
		  <input type="text" name="email" class="form-control not email" id="email">
		  <button type="button" id="emailCheck">중복확인</button>
		  <div id="emailResult"></div>
		</div>
		
		<div class="mb-3">
		  <label for="gender" class="form-label">성별</label>
		  <input type="checkbox" id="chbox1" value="m">
		  <span id="chbox_m">남자</span>
		  <input type="checkbox" id="chbox2" value="w">
		  <span id="chbox_w">여자</span>
		  <input type="checkbox" id="chbox3" value="n">
		  <span id="chbox_n">선택안함</span>
		</div>
		
		<div class="mb-3">
		  <label for="birth" class="form-label">생년월일</label>
		  <input type="text" name="birth" class="form-control not birth" id="birth">
		</div>
		
		<div class="mb-3 my-4">
	    	<label class="form-label"></label>
	  		<button id="btn" type="submit" class="btn btn-primary">가입하기</button>
	  	</div>
	  	
	</form>
	
	
	<script type="text/javascript">
	
	function onlyAlphabet(e) {
		  e.value = e.value.replace(/[^\\!-z]/gi,"");
	  }
	
	$("#id").keyup(function(){
	 	let content = $(this).val();
	 	$('#idResult1').html("6자 이상의 영문 혹은 영문과 숫자를 조합");
	 	
	 	if(content.length<6){
	 		$('#idResult1').css('color', 'red');
	 		$('#idResult1').html("✕ 6자 이상의 영문 혹은 영문과 숫자를 조합");
	 	} else {
	 		$('#idResult1').css('color', 'green');
	 		$('#idResult1').html("✓ 6자 이상의 영문 혹은 영문과 숫자를 조합");
	 	}
	 });
	
	$('#idCheck').click(function(){
		
		let userId = $('id').val();
		
		$.ajax({
			type: "POST",
			url: "./idcheck",
			data: {
				id:userId
				},
			success: function(result){
				if(result == 0 && userId > 5){
					alert("사용이 가능합니다");
					$('#idResult2').css('color', 'red');
					$('#idResult2').html("✓ 아이디 중복확인");
					$('#idResult2').val(1);
					
				} else {
					alert("이미 등록된 아이디입니다");
					$('#idResult2').css('color', 'red');
					$('#idResult2').html("✕ 아이디 중복확인");
					$('#idResult2').val(0);
				}
			}, 				
			error: function(error){
				alert("error : "+ error);
			}
		});
		
	});
	</script>
</body>
</html>