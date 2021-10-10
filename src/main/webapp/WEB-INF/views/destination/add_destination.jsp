<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<h1>add_destination page입니다</h1>
	<hr>
	<h1>샛별배송 지역입니다</h1>
	
	<form id="frm" method="post" action="form">
		<div>
			<input type="text" id="roadAddr" name="roadAddr" readonly="readonly" />
			<button type="button" id="btn_searchAgain">재검색</button>
		</div>
		<div>
			<input type="text" id="restAddr" name="restAddr" placeholder="나머지 주소를 입력해주세요" />
		</div>
		<div>
			<input type="text" id="fullAddr" name="address_location" hidden="hidden" />
			<input type="text" id="postAddr" name="address_post" hidden="hidden" />
			<input type="text" id="id" name="id" hidden="hidden" />
 		</div>
		
		<div>
			<input type="checkbox" id="cbx_basic" name="basic_destination" value="b"/>
			<label for="basic_destination">기본 배송지로 저장</label>
			<input type="hidden" id="cbx_basic2" name="basic_destination" value="n"/>
		</div>
		
		<div>
			<button type="submit" id="btn_storage">저장</button>
		</div>
	
	</form>
	
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

	let road = opener.$('#location').val();
	let post = opener.$('#post').val();
	let id = opener.$('#id').val();
	$('#roadAddr').val(road);
	$('#postAddr').val(post);
	$('#id').val(id);
	
	$('#restAddr').on('blur', function(){
		let addr1 = $('#roadAddr').val();
		let addr2 = $('#restAddr').val();
		let totalAddr = addr1+addr2;
		
		$('#fullAddr').val(totalAddr);
	});

	$('#btn_storage').click(function(){
		if($('#cbx_basic').is(':checked') == true){
			$('#cbx_basic2').attr('disabled', true);
		} 
		
		$('#btn_storage').click(function(){
			self.close();
			opener.parent.location.reload();
		});
		
	});
	
	
	
</script>
</body>
</html>