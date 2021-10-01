<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/pension/resources/importUrl.css">
</head>
<body>
	<form action="updateView?idx=${selectOne.idx}" method="post">
		<input type="hidden" name="title" value="<c:out value="${selectOne.title}"></c:out>">
		<input type="hidden" name="name" value="<c:out value="${selectOne.name}"></c:out>">
		<input type="hidden" name="wdate" value="<c:out value="${selectOne.wdate}"></c:out>">
		<input type="hidden" name="content" value="<c:out value="${selectOne.content}"></c:out>">
		<div class="board_wrap">
		        <div class="board_title">
		            <strong>공지사항</strong>
		            <p>자유롭게 작성 해주세요</p>
		        </div>
		        <div class="board_write_wrap">
		            <div class="board_write">
		                <div class="title">
		                    <dl>
		                        <dt>제목</dt>
		                        <dd><h4><c:out value="${selectOne.title}"></c:out></h4></dd>
		                    </dl>
		                </div>
		                <div class="info">
		                    <dl>
		                        <dt>글쓴이</dt>
		                        <dd><c:out value="${selectOne.name}"></c:out></dd>
		                    </dl>
		                    <dl>
		                        <dt>작성일</dt>
		                        <dd><c:out value="${selectOne.wdate}"></c:out></dd>
		                    </dl>
		                </div>
		                <div class="cont">
		                    <textarea readonly>
		                        <c:out value="${selectOne.content}"></c:out>
		                    </textarea>
		                </div>
		            </div>
		            <div class="bt_wrap">
		                <button type="submit">수정</button>
		                <a href="list">취소</a>
		            </div>
		        </div>
		    </div>
   	</form>
</body>
</html>