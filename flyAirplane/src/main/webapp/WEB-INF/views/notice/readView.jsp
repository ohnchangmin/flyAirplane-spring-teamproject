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
<!-- 	<div class="container"> -->
<!-- 		<div>	 -->
<%-- 			<h4><c:out value="${selectOne.title}"></c:out></h4>			 --%>
<!-- 		</div> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-1"> -->
<!-- 				<label>작성자</label> -->
<!-- 			</div> -->
<!-- 			<div class="col-2"> -->
<%-- 				<p><c:out value="${selectOne.name}"></c:out></p> --%>
<!-- 			</div> -->
<!-- 			<div class="col-6"></div> -->
<!-- 			<div class="col-1"> -->
<!-- 				<label>작성일</label> -->
<!-- 			</div> -->
<!-- 			<div class="col-2"> -->
<%-- 				<p><c:out value="${selectOne.wdate}"></c:out></p> --%>
<!-- 			</div>  -->
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<p><c:out value="${selectOne.content}"></c:out></p> --%>
<!-- 		</div> -->
<!-- 	</div> -->

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
                <a href="updateView?idx=${selectOne.idx}" class="on">수정</a>
                <a href="list">취소</a>
            </div>
        </div>
    </div>
</body>
</html>