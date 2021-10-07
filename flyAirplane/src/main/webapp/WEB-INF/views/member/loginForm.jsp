<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/pension/resources/css/login.css">
</head>
<body>
	<form action="/pension/member/login" method="post">
		<div class="login-form">
			<input class="text-field" placeholder="아이디" type="text" name="id">
			<input class="text-field" placeholder="비밀번호" type="password" name="password">
			<div class="loginFail">${text}</div>
			<input class="submit-btn" type="submit" value="로그인">
		</div>
	</form>
</body>
</html>