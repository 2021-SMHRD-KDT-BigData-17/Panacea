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
<link rel="stylesheet" href="assets/css/list.css">
</head>
<body data-bs-spy="scroll" data-bs-target=".navbar">

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

	<!-- board-list(게시판) -->
	<div id="content-wrapper">
		<form action="#">
			<div class="board-wrap">
				<div class="board-title">
					<h1>상비약 게시판</h1>
				</div>

				<div class="filter">
					<div>
						<label for="category">말머리</label> <select id="category">
							<option value="">전체</option>
							<option value="head" name="head">머리</option>
							<option value="neck" name="neck">목</option>
							<option value="chest" name="chest">가슴</option>
							<option value="abdomen" name="abdomen">복부</option>
							<option value="leg" name="leg">다리</option>
							<option value="others" name="others">기타</option>
						</select>
					</div>

					<!-- 검색 기능 -->
					<div class="search">
						<input type="text" id="searchInput" placeholder="제품명/약 문자">
						<button id="searchButton">검색</button>
					</div>
				</div>

				<div class="board-list-wrap">
					<div class="board-list">
						<table>
							<tr class="top">
								<th class="num">번호</th>
								<th class="category">말머리</th>
								<th class="th-title">제목</th>
								<th class="writer">작성자</th>
								<th class="date">작성일자</th>
								<th class="cnt">조회수</th>
							</tr>
							<tr>
								<td class="num">1</td>
								<td class="category">머리</td>
								<td class="title"><a href="view.jsp">제목 1</a></td>
								<td class="writer">닉네임 1</td>
								<td class="date">2023.03.XX</td>
								<td class="cnt">0</td>
							</tr>
							<tr>
								<td class="num">2</td>
								<td class="category">다리</td>
								<td class="title"><a href="view.jsp">제목 2</a></td>
								<td class="writer">닉네임 2</td>
								<td class="date">2023.03.XX</td>
								<td class="cnt">2</td>
							</tr>
							<tr>
								<td class="num">3</td>
								<td class="category">기타</td>
								<td class="title"><a href="view.jsp">제목 3</a></td>
								<td class="writer">닉네임 3</td>
								<td class="date">2023.03.XX</td>
								<td class="cnt">1</td>
							</tr>
						</table>
					</div>
					
					<!-- 게시판 페이지 번호 -->
					<div class="board-bottom">
						<div class="page">
							<a href="#" class="first"><i class="las la-angle-double-left"></i></a>
							<a href="#" class="prev"><i class="las la-angle-left"></i></a> <a
								href="#" class="num">1</a> <a href="#" class="num">2</a> <a
								href="#" class="num">3</a> <a href="#" class="num">4</a> <a
								href="#" class="num">5</a> <a href="#" class="next"><i
								class="las la-angle-right"></i></a> <a href="#" class="last"><i
								class="las la-angle-double-right"></i></a>
						</div>
						<div class="write-btn">
							<a href="write.jsp" class="on">글쓰기</a>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>


	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/aos.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>