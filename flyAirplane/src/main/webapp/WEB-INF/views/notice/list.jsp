<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
<link rel="stylesheet" href="/pension/resources/importUrl.css">
</head>
<body>
<script type="text/javascript">
</script>
 <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>창민이 펜션을 많은 이용 부탁드립니다</p>
            
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
	                    <div class="title"><a href="readView?idx=${dto.idx}">${dto.title}</a></div>
	                    <div class="writer">${dto.name}</div>
	                    <div class="date">${dto.wdate}</div>
						<div class="count">1</div>
	                </div>
                </c:forEach>
            </div>
            <div class="board_page">
                <c:if test="${pageMaker.prev}">
               		<a href="list${pageMaker.makeQuery(pageMaker.startPage-1)}" class="bt prev"><</a>
                </c:if>
                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
               		<a href="list${pageMaker.makeQuery(idx)}" class="num">${idx}</a>	
                </c:forEach>
                <c:if test="${pageMaker.next && pageMaker.endPage>0}">
                	<a href="list${pageMaker.makeQuery(pageMaker.endPage+1)}" class="bt next">></a>
                </c:if>
            </div>
            <div class="bt_wrap">
                <a href="writeView" class="on">등록</button>
            </div>
        </div>
    </div>
</body>
</html>