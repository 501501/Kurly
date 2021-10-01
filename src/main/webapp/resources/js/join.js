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
	
	/* 아이디 중복확인 함수 */
	function doubleCheck(){
		if($('#id').val()==''){
			alert('아이디를 입력하세요');
			$('#id').focus();
			return;
		}
		
		let id = $('#id').val();
		$.ajax({
			url : "./idcheck",
			type : "POST",
			data : {"id" : id},
			success : function(result){
				let rs = result.trim();
				if(rs == 1){
					alert('사용이 가능합니다');
					$('#idResult2').html('✓ 아이디 중복확인')
					.css('color', 'green');				
				} else {
					alert('이미 등록된 아이디입니다');
					$('#idResult2').html('✕ 아이디 중복확인')
					.css('color', 'red');
				}
			},
			error : function(){
				alert("error");
			}			
		});
		
		$("#id").change(function(){
			$('#idResult2').html('✕ 아이디 중복확인')
			.css('color', 'red');
		});
		
	}

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

	/** 이메일 중복체크 함수 */
	function emailCheck() {      
		let email = $('#email').val();
	  
		let regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	
	 //test 함수 == 문자열이 정규식을 만족하는지 판별하는 함수
	 //조건을 만족하면 true를 반환, 만족하지 못하면 false반환
	 
		if(regEmail.test(email)){
			
			$.ajax({
				url : "./emailcheck",
				type : "POST",
				data : {"email": email},
				success : function(result){
					let rs = result.trim();
					if(rs == 1){
						alert("사용이 가능합니다.");						
					} else {
						alert("이미 등록된 이메일입니다. 다시 작성해 주십시오!");						
					}					
				},
				error : function(){
					alert("error");
				}
			});
		} else {     
			alert("잘못된 이메일 형식입니다.");
		}
	}
	
	
/** -------------------------------------------------------------------------------- */

/** 주소 검색기능 메서드 */

function address_searching(){
	
	new daum.Postcode({
             oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                console.log(fullRoadAddr);
                
                $("[name=addr1]").val(data.zonecode);
                $("[name=addr2]").val(fullRoadAddr);
            }
         }).open();
}


/** form 전송 주소data*/

$("[name=addr3]").blur(function(){
	let total = $("[name=addr2]").val() +$("[name=addr3]").val();
	$('#address').val(total);	
});


	
	
