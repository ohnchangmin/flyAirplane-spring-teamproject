<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/pension/resources/css/joinForm.css">
</head>
<body>
    <div class="wrap">
        <h1>회원가입</h1>
        <form action="/pension/member/join" method="post">
            <dl>
                <dt>아이디</dt>
                <dd><input type="text" name="id" placeholder="아이디 입력"></dd>
            </dl>
            <dl>
                <dt>비밀번호</dt>
                <dd><input type="password" name="password" placeholder="비밀번호 입력"></dd>
            </dl>
            <dl>
                <dt>비밀번호 확인</dt>
                <dd><input type="password" name="passwordCheck" placeholder="비밀번호 재입력"></dd>
            </dl>
            <dl>
                <dt>이름</dt>
                <dd><input type="text" name="userName" placeholder="이름 입력"></dd>
            </dl>
            <input type="submit" value="회원가입">
            <input type="button" onclick="location.href='/pension/'" value="가입취소">
        </form>
    </div>
</body>
</html>