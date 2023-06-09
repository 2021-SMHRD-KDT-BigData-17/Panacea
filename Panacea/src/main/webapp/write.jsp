<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>동의보감</title>

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/aos.css">
<link rel="stylesheet" href="assets/css/line-awesome.min.css">
<link rel="stylesheet" href="assets/css/1.css">
<link rel="stylesheet" href="assets/css/write.css">
</head>
<body>

	<!-- NavBar -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
		<div class="container flex-lg-column">
			<a class="navbar-brand mx-lg-auto mb-lg-4" href="index.jsp"> <span
				class="h3 fw-bold d-block d-lg-none">동의보감</span> <img
				src="./assets/images/logo.jpg"
				class="d-none d-lg-block rounded-circle" alt="">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto flex-lg-column text-lg-center">
					<li class="nav-item"><a class="nav-link" href="list.jsp"
						style="color: #e0f780">상비약</a></li>
					<li class="nav-item"><a class="nav-link" href="pill.jsp">처방약</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="myPage.jsp">내정보</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">문의하기</a>
					</li>
				</ul>
			</div>
			<div class="user-wrap">
				<a href="myPage.jsp"><%=session.getAttribute("joinId")%></a> <span>|</span>
				<a href="LogoutCon">로그아웃</a>
			</div>
		</div>
	</nav>
	
	<!-- 게시판 게시글 작성 Form -->
	<div id="content-wrapper">
		<form action="InsertBoardCon" method="post">
			<div class="board-wrap">
				<div class="board-title">
					<h1>글쓰기</h1>
				</div>
				<div class="board-view-wrap">
					<div class="board-head">
						<div class="filter">
							<select id="category" name="category_seq" required>
								<option value="" disabled selected>말머리 선택</option>
								<option value="1">머리</option>
								<option value="2">목</option>
								<option value="3">가슴</option>
								<option value="4">복부</option>
								<option value="5">다리</option>
								<option value="6">기타</option>
							</select>
						</div>
						<div class="title">
							<input type="text" name="b_title" placeholder="제목을 입력하세요."
								required>
						</div>
					</div>
					<div class="board-content">
						<textarea name="b_content" cols="90" rows="10"
							placeholder="내용을 입력하세요." required></textarea>
					</div>
					<div class="board-btn">
						<a href="list.jsp">취소</a> <input type="submit" value="등록">
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>