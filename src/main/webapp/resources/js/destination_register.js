/**
 * destination_register.js
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
			console.log(data.zonecode);
			console.log(fullRoadAddr);
			// 부모창에 값 전송
			opener.$("[name=address_post]").val(data.zonecode);
			opener.$("[name=addr2]").val(fullRoadAddr);
			// 부모창에서 도로명 주소 받아오기
			$("#roadAddr").val(fullRoadAddr);
			// 상세주소 초기화
			$("#restAddr").val("");
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
 
 /* 재검색 버튼 클릭 이벤트*/
 $('#btn_searchAgain').click(function(){
	//self.close();
	address_searching();
});

/* 부모창에서 도로명 주소 받아오가 */
let addr2 = opener.$("#addr2").val();
$("#roadAddr").val(addr2);

/* 부모창에서 우편번호 받아오가 */
let address_post = opener.$("#address_post").val();
$("#postAddr").val(address_post);

let seoul = addr2.indexOf("서울");
let gyeonggi = addr2.indexOf("경기");
let incheon = addr2.indexOf("인천");
let daegu = addr2.indexOf("대구");
let daejeon = addr2.indexOf("대전");
let sejong = addr2.indexOf("세종특별자치시");
let cheonan = addr2.indexOf("천안시");
let asan = addr2.indexOf("아산시");
let cheongju = addr2.indexOf("청주시");

/* 수도권 */ 
if (seoul != -1 || gyeonggi != -1 || incheon != -1) {
	$('#shipping_type').val('direct');
	$('#h').html('샛별배송 지역입니다.');
	$('#s').html('매일 아침, 문 앞까지 신선함을 전해드려요');

/* 대구 */
} else if (daegu != -1) {
	$('#shipping_type').val('direct');
	$('#h').html('샛별배송 지역입니다.');
	$('#s').html('매일 아침, 문 앞까지 신선함을 전해드려요');

/* 충청 */
} else if (sejong != -1 || cheonan != -1 || asan != -1 || cheongju != -1) {
	$('#shipping_type').val('direct');
	$('#h').html('샛별배송 지역입니다.');
	$('#s').html('매일 아침, 문 앞까지 신선함을 전해드려요');
	
/* 그 외 지역 */
} else {
	$('#shipping_type').val('indirect');
	$('#h').html('택배배송 지역입니다.');
	$('#s').html('오늘 주문하면 다음 날 바로 도착해요. (일요일 휴무)');
}

//console.log($('#shipping_type').val());

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
	console.log($("#isDefault").val());
});
