<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<td colspan="5" id="td${dto.num}">
	[주문번호 ${dto.orderNum} 문의]
	
	<c:forEach items="${dto.files}" var="f">
		<div>
			<c:if test="${not empty f.oriName}">
				<img src="./down?fileName=${f.fileName}">
			</c:if>
		</div>
	</c:forEach>
	
	${dto.contents}
	
	<a href="./${board}/update?num=${num}"><input type="button" value="수정"></a>
	<a href="./${board}/delete?num=${num}"><input type="button" value="삭제"></a>
</td>