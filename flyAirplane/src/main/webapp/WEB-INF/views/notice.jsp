<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="/pension/resources/bootstrap.min.css">
</head>
<body>
<div>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">등록일</th>
			<tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<th scope="row">${dto.idx}</th>
					<td>${dto.title}</td>
					<td>${dto.name}</td>
					<td>${dto.wdate}</td>
				<tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>