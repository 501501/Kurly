<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th scope="row">제목</th>
			<td>${dto.title}</td>
		</tr>
		<tr>
			<th scope="row">작성자</th>
			<td>${dto.writer}</td>
		</tr>
		<tr>
			<td colspan="2">
			<ul>
				<li>
					<strong>작성일</strong>
					<span>${dto.regDate}</span>
				</li>
				<li>
					<strong>조회수</strong>
					<span>${dto.hits}</span>
				</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				${dto.contents}
			</td>
		</tr>
	</table>
</body>
</html>