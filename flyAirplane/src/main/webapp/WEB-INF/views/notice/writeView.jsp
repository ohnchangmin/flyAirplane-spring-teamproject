<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<link rel="stylesheet" href="/pension/resources/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<form method="post">
			<div>
				<label>제목</label>
				<input action="/notice/wirte" type="text" name="title">
			</div>
			<div>
				<label>내용</label>
				<textarea rows="20" cols="100" name="content"></textarea>
			</div>
			<button type="submit">저장</button>
		</form>
	</div>
</body>
</html>