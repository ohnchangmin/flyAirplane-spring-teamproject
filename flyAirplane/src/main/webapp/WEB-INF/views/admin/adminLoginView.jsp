<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<link rel="stylesheet" href="/pension/resources/login.css">
</head>
<body>
	<form action="/pension/admin/adminLogin" method="post">
		<div class="login-form">
			<input class="text-field" placeholder="아이디" type="text" name="id">
			<input class="text-field" placeholder="비밀번호" type="password" name="password">
			<div class="loginFail">${text}</div>
			<input class="submit-btn" type="submit" value="로그인">
		</div>
	</form>
	
</body>
</html>