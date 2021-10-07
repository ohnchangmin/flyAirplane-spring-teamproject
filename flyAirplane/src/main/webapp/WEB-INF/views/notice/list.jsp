<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
	<main>
		<div class="board_wrap">
			<div class="board_title">
				<strong>공지사항</strong>
				<p>힐링캠프 많은 이용 부탁드립니다</p>
	
			</div>
			<div class="board_list_wrap">
				<div class="board_list">
					<div class="top">
						<div class="num">번호</div>
						<div class="title">제목</div>
						<div class="writer">글쓴이</div>
						<div class="date">작성일</div>
						<div class="count">조회</div>
					</div>
					<c:forEach items="${list}" var="dto">
						<div>
							<div class="num">${dto.idx}</div>
							<div class="title">
								<a href="readView?idx=${dto.idx}">${dto.title}</a>
							</div>
							<div class="writer">${dto.name}</div>
							<div class="date">${dto.wdate}</div>
							<div class="count">1</div>
						</div>
					</c:forEach>
				</div>
				<div class="board_page">
					<c:if test="${pageMaker.prev}">
						<a href="list${pageMaker.makeQuery(pageMaker.startPage-1)}"
							class="bt prev"><</a>
					</c:if>
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
						var="idx">
	                ${page}
	               		<a href="list${pageMaker.makeQuery(idx)}"
							class="num <c:if test="${page eq idx}"><c:out value="on"/></c:if>">${idx}</a>
					</c:forEach>
					<c:if test="${pageMaker.next && pageMaker.endPage>0}">
						<a href="list${pageMaker.makeQuery(pageMaker.endPage+1)}"
							class="bt next">></a>
					</c:if>
				</div>
				<div class="bt_wrap">
					<a href="writeView" class="on">등록</a>
				</div>
			</div>
		</div>
	</main>

		<!-- Footer -->
	<footer class="text-center text-lg-start bg-light text-muted">
	  <!-- Section: Links  -->
	  <section class="">
	    <div class="container text-center text-md-start mt-5">
	      <!-- Grid row -->
	      <div class="row mt-3 pt-3">
	        <!-- Grid column -->
	        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
	          <!-- Content -->
	          <h6 class="text-uppercase fw-bold mb-4">
	            <i class="fas fa-gem me-3"></i>Healing Camp
	          </h6>
	          <p>
	            Here you can use rows and columns to organize your footer content. Lorem ipsum
	            dolor sit amet, consectetur adipisicing elit.
	          </p>
	        </div>
	
	        <!-- Grid column -->
	        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
	          <!-- Links -->
	          <h6 class="text-uppercase fw-bold mb-4">
	            Contact
	          </h6>
	          <p><i class="fas fa-home me-3"></i> 경남 함양군 안의면 유동길 76</p>
	          <p>
	            <i class="fas fa-envelope me-3"></i>
	            hyundamocm@gmail.com
	          </p>
	          <p><i class="fas fa-phone me-3"></i> 010-9360-0870 </p>
	              <div>
				      <a href="" class="me-4 text-reset">
				        <i class="fab fa-facebook-f"></i>
				      </a>
				      <a href="" class="me-4 text-reset">
				        <i class="fab fa-twitter"></i>
				      </a>
				      <a href="" class="me-4 text-reset">
				        <i class="fab fa-google"></i>
				      </a>
				      <a href="" class="me-4 text-reset">
				        <i class="fab fa-instagram"></i>
				      </a>
				      <a href="" class="me-4 text-reset">
				        <i class="fab fa-linkedin"></i>
				      </a>
				      <a href="" class="me-4 text-reset">
				        <i class="fab fa-github"></i>
				      </a>
				   </div>
	          
	        </div>
	        <!-- Grid column -->
	      </div>
	      <!-- Grid row -->
	    </div>
	  </section>
	  <!-- Section: Links  -->
	</footer>
<!-- Footer -->
</body>
</html>