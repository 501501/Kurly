/**
 * destination_register.js
 */

/* 부모창에서 도로명 주소 받아오가 */
let addr2 = opener.$("#addr2").val();
$("#roadAddr").val(addr2);

/* 부모창에서 우편번호 받아오가 */
let address_post = opener.$("#address_post").val();
$("#postAddr").val(address_post);

/* 저장 버튼 클릭 이벤트 */
$("#btn_storage").click(function(){
	// 전체 주소
	let total = $("[name=roadAddr]").val()+ " " +$("[name=restAddr]").val();
	$('#fullAddr').val(total);

	// form 제출	
	$("#frm").submit();
});

$("#isDefaultHidden").click(function() {
	// 기본 배송지 값
	// 기본 배송지에 체크된 경우 -> y
	if ($("#isDefaultHidden").is(':checked')) {
		$("#isDefault").val('y');

	// 기본 배송지에 체크되지 않은 경우 -> n
	} else {
		$("#isDefault").val('n');
	}
	console.log($("#isDefaultHidden").val());
});
