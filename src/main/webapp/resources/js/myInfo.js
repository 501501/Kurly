/**
 *  개인정보수정 페이지.js
 */
 
 
	$('#btn-delId').click(function() {
		let dataValue = $(this).attr('data-value'); 
		let rlt = confirm('정말 탈퇴하시겠습니까?'); 
		if(rlt) {
			$('#btn-delId').attr('href', './delete?id='+dataValue); 					
		} else {		 
			alert('굳 잘생각하셨음');
		}
 	});
 	
 	
 	$(document).ready(function(){	
	 	$('#clause_ad').click(function(){
	        if($('#clause_ad').prop('checked')){
	            $('.market-check').prop('checked', true);
	        } else {
	            $('.market-check').prop('checked', false);
	        }
	    });
	 	
	 	$('.market-check').click(function(){
	        if($('.check-part:checked').length == 2){
	            $('#clause_ad').prop('checked', true);
	        } else {
	            $('#clause_ad').prop('checked', false);
	        }
	    });
    });
    

	$('#btn-updateId').click(function(){
		let curId = $('#id').val();
		let curPw = $('#password').val();
		
		$.ajax({
			url: "./pwcheck",
			type: "POST",
			data: {
				"pw" : curPw,
				"id" : curId
				},
			success : function(result){
				let rs = result.trim();
				if(rs == 1){
					$('#frm').submit();
					alert('수정 완료');
				} else {
					alert('현재 비밀번호를 다시 확인해주세요');
				}
			},
			error : function(){
				alert('error뜸');
			}
		});
	});
