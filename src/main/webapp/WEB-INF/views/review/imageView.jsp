<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${dto}" var="f">
	<span>
		<c:if test="${not empty f.oriName}">
			<img class="preview" src="./review_down?fileName=${f.fileName}">
		</c:if>
	</span>
</c:forEach>