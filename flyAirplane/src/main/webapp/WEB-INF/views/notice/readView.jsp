<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<form method="post">
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
		                <button type="submit" formaction="updateView?idx=${selectOne.idx}">수정</button>
		                <button type="submit" formaction="delete?idx=${selectOne.idx}">삭제</button>
		                <a href="list">취소</a>
		            </div>
		        </div>
		    </div>
   	</form>
</body>
</html>