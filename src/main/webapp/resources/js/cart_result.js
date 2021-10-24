/**
 *  cart_result.js
 */
 
 $(document).ready(function(){
	var vArr = new Array();
	var vList = $("input[name='cbx_minor']");
	var userId = $('.userIdVal').val();

	for(var i=0; i<vList.length;i++){
		if(vList[i].checked){
			vArr.push(vList[i].value);
			vArr.
		}
	}
	
	if(vArr.length == 0){
		var price0 = $('.price').html(0);
		var fee0 = $('.fee').html(0);
		$('.totalPay').html()=price0+fee0;
	} else {
		$.ajax({
			url : './calculate',
			type : 'POST',
			data : {
				vArr : vArr,
				userId : userId
			},
			success : function(result){
				let rs = result.trim();
				$('.price').html(rs+'원');
				
			},
			error : function(){
				alert('에러입니다~');
			}
		});
	}
});