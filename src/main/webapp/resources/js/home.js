/**
 * home.js
 */
 
/* 1:1 문의, 대량주문 문의, 상품 제안, 에코포장 피드백은 로그인한 사람만 접근 가능 */
/* 1:1 문의, 상품 제안, 에코포장 피드백 alert */
$('.control').click(function(){
	let id = this.getAttribute('data-member-id');
	
	if (id == "") {
		alert("로그인하셔야 본 서비스를 이용하실 수 있습니다");
		location = "./members/login";
	} else {
		let board = this.getAttribute('data-click-board');
		
		if (board == 'qna') {
			location = "./mypage/mypage_qna";
		} else if (board == 'offer') {
			location = "./mypage/offer";
		} else if (board == 'echo') {
			location = "./mypage/echo_packing";
		}
	}
});

/* 대량주문 문의 페이지 */
$('#bulk_order').click(function(){
	let id = this.getAttribute('data-member-id');
	/* 로그인 안한 경우 */
	if (id == "") {
		location = "./members/login";
	/* 로그인 한 경우 */
	} else {
		location = "./mypage/bulk_order";
	}
});