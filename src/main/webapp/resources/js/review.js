/**
 * review.js
 */
 
/*---------------- 작성가능 후기 ----------------*/
let orderNums = $('.orderList');
//console.log(orderNums);

/* 초기값 beforeView */
$.ajax({
	type: "GET",
	url: "../ajax/beforeView",
	async: false,
	success: function(data) {
		data = data.trim();
		$("#viewBeforeList").html(data);
	}
});
selectResultBefore(); 

/* 작성가능 후기 클릭 이벤트 */
$("#viewBefore").click(function(){
	//sessionStorage.setItem('view', 'beforeView');
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


/*---------------- 작성완료 후기 ----------------*/
/* 작성완료 후기 클릭 이벤트 */
$("#viewAfter").click(function(){
	//sessionStorage.setItem('view', 'afterView');
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

/* 배송완료 문자열 슬라이싱 */
var ships = $(".ship");
for(ship of ships) {	
	let strArray = ship.innerText.split('-');
	let shippingDate = strArray[1]+"월"+strArray[2]+"일"+" 배송완료";
	ship.innerText = shippingDate;
}

/* 작성일 문자열 슬라이싱 */
$("#viewAfter").click(function(){
	var regDates = $(".regDate");
	for(regDate of regDates){
		let strArray = regDate.innerText.split('-');
		let registerDate = strArray[0].substring(2,4) + "." + strArray[1] + "." + strArray[2] + " 작성";
		regDate.innerText = registerDate;
	}	
});
