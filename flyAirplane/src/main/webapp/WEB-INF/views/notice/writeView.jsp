<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항 작성</title>
<link rel="stylesheet" href="/pension/resources/importUrl.css">
</head>
<body>
	<form action="write" method="post">
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
							<dd>
								<input type="text" name="title" placeholder="제목 입력">
							</dd>
						</dl>
					</div>
					<hr>
					<div class="cont">
						<input type="hidden" name="name" value="${sessionScope.adminName}">
						<textarea name="content" placeholder="내용 입력"></textarea>
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