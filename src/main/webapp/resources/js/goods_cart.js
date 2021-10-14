/**
 *  goods_cart.js
 */

function plusAmount(cartId){
	$.ajax({
			url : './update/plus_amount',
			type : "POST",
			data : {
					"userId"  : $('#userIdVal').val(),
					"cart_id" : cartId
					},
			success : function(result){
						let rs = result.trim();
						if(rs == 1){
							location.reload();
						}
					},
			error : function(){
						alert('수량 Update 실패!');
					}
		});
}

function minusAmount(cartId){
	$.ajax({
			url : './update/minus_amount',
			type : "POST",
			data : {
					"userId"  : $('#userIdVal').val(),
					"cart_id" : cartId
					},
			success : function(result){
						let rs = result.trim();
						if(rs == 1){
							location.reload();
						}
					},
			error : function(){
						alert('수량 Update 실패!');
					}
		});
}

