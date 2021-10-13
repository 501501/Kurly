<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>삭제하기</h2>
	<div>
		해당 글을 삭제하시겠습니까?<br>
		데이터 삭제 시 복구가 불가능합니다.
	</div>
	<button type="button" id="del">삭제하기</button>
	<span id="close">CLOSE X</span>
	
	<script type="text/javascript">
		$("#del").click(function(){
			// 부모창 주소 변경
			opener.location.href = './delete?num=${param.num}';
			self.close();
		});
		
		$("#close").click(function(){
			self.close();
		});
	</script>
</body>
</html>