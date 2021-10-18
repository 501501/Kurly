/**
 * review.js
 */

let orderNums = $('.orderList');
//console.log(orderNums);

/* 초기값 beforeView */
if (sessionStorage.getItem('view') == null) {
	sessionStorage.setItem('view', 'beforeView');
};

/* session에 view 값 저장 */
view = sessionStorage.getItem('view');
if (view == 'beforeView') {
	/* 작성가능 후기 주문번호 */
	sessionStorage.setItem('view', 'beforeView');
	$("#viewAfterList").html("");
	
	$.ajax({
		type: "GET",
		url: "../ajax/beforeView",
		async: false,
		success: function(data){
			data = data.trim();
			$("#viewBeforeList").html(data);
		}
	});
	selectResultBefore();
}

else if (view == 'afterView') {
	/* 작성완료 후기 주문번호 */
	sessionStorage.setItem('view', 'afterView');
	$("#viewBeforeList").html("");
		
	$.ajax({
		type: "GET",
		url: "../ajax/afterView",
		async: false,
		success: function(data){
			data = data.trim();
			$("#viewAfterList").html(data);
		}
	});
}

/* 작성가능 후기 주문번호 */
$("#viewBefore").click(function(){
	sessionStorage.setItem('view', 'beforeView');
	$("#viewAfterList").html("");
	
	$.ajax({
		type: "GET",
		url: "../ajax/beforeView",
		async: false,
		success: function(data){
			data = data.trim();
			$("#viewBeforeList").html(data);
		}
	});
	selectResultBefore();
});

/* 작성완료 후기 주문번호 */
$("#viewAfter").click(function(){
	sessionStorage.setItem('view', 'afterView');
	$("#viewBeforeList").html("");
	
	$.ajax({
		type: "GET",
		url: "../ajax/afterView",
		async: false,
		success: function(data){
			data = data.trim();
			$("#viewAfterList").html(data);
		}
	});
});

/* beforeView : selectResultBefore 요청 함수 */
function selectResultBefore() {
	orderNums = $('.orderList');
	
	for (let orderNum of orderNums) {
		// 주문번호
		orderNum = (orderNum.getAttribute('data-order-num'));
		//console.log(orderNum);
		$.ajax({
			type: "GET",
			url: "../ajax/order_select",
			data: { orderNum: orderNum },
			async: false,
			success: function(data) {
				data = data.trim();
				$('#selectResultBefore' + orderNum).html(data);
			}
		});
	}
}