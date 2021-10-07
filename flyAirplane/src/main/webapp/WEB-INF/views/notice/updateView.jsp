<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항 작성</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="/pension/resources/importUrl.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-dark bg-dark">
			<a class="navbar-brand" href="/pension/#"> <i class="fas fa-home">
				</i>HealingCamp
			</a>
			<!-- Links -->
			<ul class="nav justify-content-center">
				<li class="nav-item"><a class="nav-link text-white" href="/pension/#">소개</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/pension/notice/list">공지사항</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/pension/review/reviewBoard">후기</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/pension/#road">오시는길</a></li>
			</ul>
			<ul class="nav justify-content-end">
				<li class="nav-item">
					<a class="nav-link text-white" href="/pension/member/joinForm">
						<i class="fas fa-user mr-1"></i>Sign Up
					</a>
				</li>
				<li class="nav-item">
					<c:if test="${empty sessionScope.member}">
						<a class="nav-link text-white" href="/pension/member/loginForm">
							<i class="fas fa-sign-in-alt mr-1"></i>Login
						</a>
					</c:if>
					<c:if test="${not empty sessionScope.member}">
						<a class="nav-link text-white" href="/pension/member/logout">
							<i class="fas fa-sign-in-alt mr-1"></i>Logout
						</a>
					</c:if>
				</li>
			</ul>
		</nav>
	</header>
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