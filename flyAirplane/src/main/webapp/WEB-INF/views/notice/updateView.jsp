<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항 작성</title>
<link rel="stylesheet" href="/pension/resources/importUrl.css">
</head>
<body>
	<form action="update" method="post">
	<input type="hidden" name="idx" value="${param.idx}">
	    <div class="board_wrap">
	        <div class="board_title">
	            <strong>공지사항</strong>
	            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
	        </div>
	        <div class="board_write_wrap">
	            <div class="board_write">
	                <div class="title">
	                    <dl>
	                        <dt>제목</dt>
	                        <dd><input type="text" name="title" value="<c:out value="${title}"></c:out>"></dd>
	                    </dl>
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>글쓴이</dt>
	                        <dd><input type="hidden" name="name" value="<c:out value="${name}"></c:out>"><c:out value="${name}"></c:out></dd>
	                    </dl>
	                    <dl>
	                        <dt>작성일</dt>
	                        <dd><c:out value="${wdate}"></c:out></dd>
	                    </dl>
	                </div>
	                <div class="cont">
	                    <textarea name="content"><c:out value="${content}"></c:out></textarea>
	                </div>
	            </div>
	            <div class="bt_wrap">
	                <button type="submit">등록</button>
	                <a href="list">취소</a>
	            </div>
	        </div>
	    </div>
	</form>
</body>
</html>