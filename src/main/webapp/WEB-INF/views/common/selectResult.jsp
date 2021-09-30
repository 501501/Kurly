<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

[주문번호 ${dto.orderNum} 문의]
<c:forEach items="${dto.files}" var="f">
	<div>
		<c:if test="${not empty f.oriName}">
			<img src="./down?fileName=${f.fileName}">
		</c:if>
	</div>
</c:forEach>

${dto.contents}

<a href="./mypage_qna/update?num=${num}"><input type="button" value="수정"></a>
<a href="./mypage_qna/delete?num=${num}"><input type="button" value="삭제"></a>