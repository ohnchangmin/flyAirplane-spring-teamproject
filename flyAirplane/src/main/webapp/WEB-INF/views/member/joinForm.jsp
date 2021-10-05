<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/pension/member/join" method="post">
		<label>아이디</label>
		<input type="text" name="id">
		<label>패스워드</label>
		<input type="password" name="password">
		<label>이름</label>
		<input type="text" name="userName">
		<button type="submit">제출</button>
	</form>
</body>
</html>