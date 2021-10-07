<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Review</title>
<!-- Load d3.js -->
<script src="https://d3js.org/d3.v3.min.js"></script>
<!-- Load d3-cloud -->
<script src="https://rawgit.com/jasondavies/d3-cloud/master/build/d3.layout.cloud.js"></script>
<link rel="stylesheet" href="/pension/resources/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
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
	<main>
		<div class="container">
				<!-- Create Chart -->
				<div class="row mt-5">
				<div id="my_dataviz" style="border: 1px solid black; width:600px; height: 500px; float: none; margin: 0 auto;"></div>
				<script type="text/javascript"
					src="/pension/resources/js/webChart.js"></script>
				</div>
		</div>
	</main>
</body>
</html>