<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${dto.files}" var="f">
	<div>
		<c:if test="${not empty f.oriName}">
			<img src="./echo_down?fileName=${f.fileName}">
		</c:if>
	</div>
</c:forEach>

${dto.contents}

<a href="./${board}/update?num=${num}"><input type="button" value="수정"></a>
<a href="./${board}/delete?num=${num}"><input type="button" value="삭제"></a>