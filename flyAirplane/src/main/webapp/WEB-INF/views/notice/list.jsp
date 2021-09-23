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
<div class="container">
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
						<td>${dto.idx}</td>
						<td><a href="/pension/notice/readView?idx=${dto.idx}">${dto.title}</a></td>
						<td>${dto.name}</td>
						<td>${dto.content}</td>
						<td>${dto.wdate}</td>
					<tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">Next</a></li>
		  </ul>
		</nav>
	</div>
</div>
</body>
</html>