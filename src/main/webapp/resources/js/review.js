/**
 * review.js
 */

let orderNums = $('.orderList');
//console.log(orderNums[0].getAttribute('data-order-num'));

for(let orderNum of orderNums) {
	// 주문번호
	orderNum = (orderNum.getAttribute('data-order-num'));
	//console.log(orderNum);
	$.ajax({
		type: "GET",
		url: "../ajax/order_select",
		data: {orderNum:orderNum},
		async: false,
		success: function(data){
			data = data.trim();
			$('#selectResult'+orderNum).html(data);
		}
	});
}

$(".btn").click(function(){
	// 상품 번호
	let goodsNo = (this).getAttribute('data-goods-no');
	location.href = "./review_register?goodsNo="+goodsNo;
});