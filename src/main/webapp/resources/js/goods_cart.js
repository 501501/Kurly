/**
 *  goods_cart.js
 */

/** 장바구니 수량 +1 UP */
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

/** 장바구니 수량 -1 DOWN */
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


/** 장바구니품목 선택삭제 */
function deleteCbx(){
	var valueArr = new Array();
	var list = $("input[name='cbx_minor']");
	var userId = $('.userIdVal').val();

	for(var i=0; i<list.length;i++){
		if(list[i].checked){
			valueArr.push(list[i].value);
		}
	}
	if(valueArr.length ==0){
		alert('선택된 물품이 없습니다');
	} else {
		let chk = confirm("해당 품목들을 장바구니에서 삭제하시겠습니까?");
		$.ajax({
			url : './deleteSelect',
			type : 'POST',
			data : {
				valueArr : valueArr,
				userId : userId
			},
			success : function(result){
				let rs = result.trim();
				if(rs==1){
					alert('선택된 품목들을 삭제했습니다');
					location.reload();
				} else {
					alert('삭제 실패');
				}
			}
		});
	}
}

