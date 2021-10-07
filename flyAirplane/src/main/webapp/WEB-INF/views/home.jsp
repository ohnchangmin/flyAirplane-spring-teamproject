<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Home</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=865bb5e6b5dd1c9aafd66f786f305256&libraries=services"></script>
<link rel="stylesheet" href="/pension/resources/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
		<div id="idx_top">
	        <strong><span>힐링</span>캠프</strong>
	        <p>함양 최고의 펜션에서 자연과 함께 힐링이 무엇인지 느껴보세요</p>
    	</div>
		<div class="container">
			<div class="list_wrap">
				<ul>
					<li class="item item1">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>

					</li>
					<li class="item item2">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>

					</li>
					<li class="item item3">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>

					</li>
					<li class="item item4">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>

					</li>
					<li class="item item5">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>

					</li>
					<li class="item item6">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>

					</li>
					<li class="item item7">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>

					</li>
					<li class="item item8">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>

					</li>
					<li class="item item9">
						<div class="image">사진</div>
						<div class="cont">
							<strong>제목이 들어갑니다</strong>
							<p>내용이 들어갑니다</p>
							<a href="#">바로가기</a>
						</div>
					</li>
				</ul>
			</div>
			<h3 class="h3" id="road">오시는 길</h3>
			<hr>
			<!-- Create Map -->
			<div class="row">
				<div class="center-block" id="map"
					style="float: none; margin: 0 auto; width: 1110px; height: 400px;"></div>
				<script type="text/javascript"
					src="/pension/resources/js/kakaoMap.js"></script>
			</div>

			<div>
				<h3 class="mt-5">함양 힐링캠프</h3>
				<p>경상남도 함양군 안의면 유동길 76</p>
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
