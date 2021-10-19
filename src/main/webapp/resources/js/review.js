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

/* afterView image */
let reviewImages = $(".review_image");

for (let reviewImage of reviewImages) {
	let num = (reviewImage.getAttribute('data-review-num'));
	//console.log(num);
	$.ajax({
			type: "GET",
			url: "../ajax/review_image",
			data: { num: num },
			async: false,
			success: function(data) {
				data = data.trim();
				$('#review_image' + num).html(data);
			}
		});
}

/* afterView 내용 클릭 */
$(".detailView").click(function(){
	// review 글 번호
	let num = (this).getAttribute("data-review-num");
	//console.log(num);
	
	// 클릭 전인 경우
	if ($("#after"+num).length == 0) {
		// 클릭 전 태그 숨기고
		$("#before"+num).hide();
		// 클릭 후 태그 요청
		$.ajax({
			type: "GET",
			url: "../ajax/review_select",
			data: { num: num },
			async: false,
			success: function(data) {
				data = data.trim();
				$("#select" + num).html(data);
			}
		});
		
	// 클릭 후인 경우
	} else {
		// 클릭 전 태그 보이고
		$("#before"+num).show();
		// 클릭 후 태크 삭제
		$("div").remove('#after'+num);
	}
});