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
	<h1>배송지 수정</h1>
	
	<input type="text" id="id" hidden="hidden"/>
	
	<div>
		<input type="text" id="labelValue" hidden="hidden"/>
		
		<label for="etcAddr" id="addrLabel"></label><br>
		<input type="text" name="etcAddr" id="etcAddr"/>
	</div>
	<div>
		<label for="receiver_name">받으실 분</label><br>
		<input type="text" name="receiver_name" id="name" />
	</div>
	<div>
		<label for="receiver_phone">휴대폰</label><br>
		<input type="text" name="receiver_phone" id="phone" />
	</div id="iu">
		<div>
			<input type="checkbox" name="basic_destination" id="basic" />
			<label for="basic_destination">기본 배송지로 저장</label>
		</div>
	
	<div>
		<button type="button" id="btn_save">저장</button><br>
		<button type="button" id="btn_delete">삭제</button>
	</div>
	
<script type="text/javascript">
/*	let id = opener.$('#id').val();
	let addr = opener.$('#loca').html();
	let basicD = opener.$('.basic_BorN').val();
	
	$('#id').val(id);
	let addr2 = $('#labelValue').val(addr).split(')');
	$('#addrLabel').html(addr2+')');
	
	if(basicD == 'b'){
		$('#basic').attr('checked', true);
	} else {
		$('#iu').attr('hidden', true);
	}
*/

//	var addr = $('#labelValue').val().split(')');
//	$('#addrLabel').html(addr[0]+')');


</script>
</body>
</html>