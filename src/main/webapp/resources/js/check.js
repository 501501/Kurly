/**
 *  아이디, 이메일 중복확인 기능
 */
 
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
