<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/pension/resources/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div>	
			<h4><c:out value="${selectOne.title}"></c:out></h4>			
		</div>
		<div class="row">
			<div class="col-1">
				<label>작성자</label>
			</div>
			<div class="col-2">
				<p><c:out value="${selectOne.name}"></c:out></p>
			</div>
			<div class="col-6"></div>
			<div class="col-1">
				<label>작성일</label>
			</div>
			<div class="col-2">
				<p><c:out value="${selectOne.wdate}"></c:out></p>
			</div> 
		</div>
		<div>
			<p><c:out value="${selectOne.content}"></c:out></p>
		</div>
	</div>
</body>
</html>