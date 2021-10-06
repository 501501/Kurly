/**
 * 회원가입(join) js
 */
 
 	/* 아이디 영어, 숫자만 입력가능 함수 */
	function onlyAlphabet(e) {
		  e.value = e.value.replace(/[^\\!-z]/gi,"");
	  }
	
/** -------------------------------------------------------------------------------- */
	
	/* 아이디 조건 함수 */ 			// * "아이디 중복확인" 메세지 부분 손 봐야함 
	
	$('#id').focus(function(){
		 	$('#idResult1').html("• 6자 이상의 영문 혹은 영문과 숫자를 조합");
		 	$('#idResult2').html("• 아이디 중복확인");
		 	
		 	return;		
	})
	.keyup(function(){
	 	let content = $(this).val();

	 	if(content.length<6){
	 		$('#idResult1').css('color', 'red');
	 		$('#idResult1').html("✕ 6자 이상의 영문 혹은 영문과 숫자를 조합");
	 	} else {
	 		$('#idResult1').css('color', 'green');
	 		$('#idResult1').html("✓ 6자 이상의 영문 혹은 영문과 숫자를 조합");
	 	}
	 });	 
	
/** -------------------------------------------------------------------------------- */
	
	/** 메인 비밀번호입력 조건설정 함수 */ // * 영문/숫자/특문(공백제외) 허용,조합 조건 미완성
	$('#pw').focus(function(){
		$('#pwExplain1').html("• 10자 이상 입력");
		$('#pwExplain2').html("• 영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합");
		$('#pwExplain3').html("• 동일한 숫자 3개 이상 연속 사용 불가");
	})
	.keyup(function(){
		let content = $(this).val();	
		if(content.length>9){
			$('#pwExplain1').html("✓ 10자 이상 입력")
			.css('color', 'green');
		} else {
			$('#pwExplain1').html("✕ 10자 이상 입력")
			.css('color', 'red');
		}
		
		
		let pwd = $(this).val();
		if(/(\w)\1\1/.test(pwd) || pwd == ''){
    		$('#pwExplain3').html("✕ 동일한 숫자 3개 이상 연속 사용 불가")
    		.css('color', 'red');
		} else {
			$('#pwExplain3').html("✓ 동일한 숫자 3개 이상 연속 사용 불가")
    		.css('color', 'green');
		}
			
	});
	
/** -------------------------------------------------------------------------------- */
	
	/** 확인용 비밀번호입력 조건설정 함수 */
	$('#pw2').focus(function(){
		$('#pw2Explain').html("• 동일한 비밀번호를 입력해주세요.");
	})
	.keyup(function(){
		let pw1 = $('#pw').val();
		if($(this).val() == pw1){
			$('#pw2Explain').html("✓ 동일한 비밀번호를 입력해주세요.")
			.css('color', 'green');
		} else {
			$('#pw2Explain').html("✕ 동일한 비밀번호를 입력해주세요.")
			.css('color', 'red');
		}		
	});
	
/** -------------------------------------------------------------------------------- */	
	
	/** 성별(gender) 체크박스 함수 */
	$(document).ready(function(){
		$('.checkb').click(function(){
			if($(this).prop('checked', true)){
				$(this).click(function(){
					$(this).prop('checked', true);
				});
				
			if($(this).prop('checked')){
				$('.checkb').prop('checked',false);
				$(this).prop('checked', true);
			}
			
			}
		});
	});
	
/** -------------------------------------------------------------------------------- */

/** 추가입력사항 기능 */

$('#recomm').on('click', function(){
	$('#writeValue').removeAttr('hidden');
	$('#writeValue').attr({
		'placeholder':'추천인 아이디를 입력해주세요.'
	});
});	
