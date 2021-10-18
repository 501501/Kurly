<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list_after">
	<c:forEach items="${reviews}" var="review">
		${review.title}
	</c:forEach>
</ul>