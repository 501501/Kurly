/**
 * destination_modify.js
 */

/* 저장 버튼 클릭 */
$("#save").click(function(){
	// 도로명 주소
	var roadAdd = $("#roadAdd").html();
	// 상세 주소
	var detailAdd = $("#detailAdd").val();
	// 전체 추소
	var fullAdd = roadAdd + " " + $("#detailAdd").val();
	$("#fullAdd").val(fullAdd);
	
	$("#frm").submit();
});

/* 삭제 버튼 클릭 */
$("#del").click(function(){
	var address_post = $("#post").val();
	var check_type = $("#isCheck").val();
	
	ck = confirm("배송지를 삭제하시겠습니까?");
	
	if(ck) {
		location="./delete?address_post="+address_post+"&check_type="+check_type;
	}
});

/* 기본 배송지 값 설정 */
$("#isDefaultHidden").click(function() {
	// 기본 배송지 값
	// 기본 배송지에 체크된 경우 -> y
	if ($("#isDefaultHidden").is(':checked')) {
		$("#isDefault").val('y');

	// 기본 배송지에 체크되지 않은 경우 -> n
	} else {
		$("#isDefault").val('n');
	}
	console.log($("#isDefault").val());
});
