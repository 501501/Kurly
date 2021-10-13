/**
 * list.js
 */

/* 주소 검색기능 메서드 */
function address_searching() {
	var width = 516;
	var height = 453.6;
	
	new daum.Postcode({
		width: width,
		height: height,
		
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			// form 창 띄우기
			openWin();

			// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 도로명 조합형 주소 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			}
			// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
			// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
			if (fullRoadAddr !== '') {
				fullRoadAddr += extraRoadAddr;
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			// console.log(data.zonecode);
			// console.log(fullRoadAddr);

			$("[name=address_post]").val(data.zonecode);
			$("[name=addr2]").val(fullRoadAddr);
			
		}
	}).open({
		left: (window.screen.width / 2) - (width / 2),
    	top: (window.screen.height / 2) - (height / 2)
	});
}


/* form 전송 주소 data*/
$("[name=addr3]").blur(function(){
	let total = $("[name=addr2]").val() +$("[name=addr3]").val();
	$('#address_loca').val(total);	
});

/* form창 열기 */
function openWin(){
	
	// 팝업 사이즈
	let popupWidth = 516;
	let popupHeight = 453.6;
	
	// 화면 중앙 정렬
	let popupX = (window.screen.width / 2) - (popupWidth / 2);
	let popupY= (window.screen.height / 2) - (popupHeight / 2);

	window.open("./form", "_blank", 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
}

/* 새 배송지 추가 버튼 클릭*/
$("#newAddressAdd").click(function(){
	address_searching();
});

/* 선택 배송지 변경 이벤트 */
$(".skin_checkbox").change(function(){
	let post = (this).getAttribute('data-delivery-post');
	//console.log(post);
	
	$.get('../../ajax/check_type?post='+post, function(data){
		data = data.trim();
		console.log(data);
	})
});

/* 수정 버튼 클릭 */
$(".modify").click(function(){
	let post = (this).getAttribute('data-delivery-post');
	window.open("./modify?post="+post, "_blank", "width=800, height=700");
});