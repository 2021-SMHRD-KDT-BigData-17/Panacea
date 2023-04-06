<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.smhrd.domain.MEDICINEDAO"%>
<%@page import="com.smhrd.domain.TB_MEDICINE"%>
<%@page import="java.util.List"%>

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
<link rel="stylesheet" href="assets/css/pill.css">
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
					<li class="nav-item"><a class="nav-link" href="list.jsp">상비약</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="pill.jsp"
						style="color: #e0f780">처방약</a></li>
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

	<!-- 처방약 페이지 -->
	<div id="content-wrapper">
		<form action="#">
			<div class="pill-wrap">
				<div class="search">
					<input type="text" id="searchInput" placeholder="제품명/약 문자">
					<button id="searchButton">검색</button>
				</div>
<!-- 				<div class="pill-table">
					<table>
						<tr>
							<td rowspan="2" class="image"><img
								src="assets/images/aspirin.jpg"></td>
							<td><a class="pillName" href="pillInfo.jsp">아스피린(Aspirin)</a></td>
							<td rowspan="2">
								<div class="bookmark-wrap">
									<button class="bookmark">즐겨찾기</button>
									<i class="las la-star"></i>
								</div>
							</td>
						</tr>
						<tr>
							<td><p class="pillContent">아스피린은 해열제, 진통제 및 항염증제로 사용되는
									일종의 약물입니다. 아스피린은 혈액을 얇게 만들어 혈전 형성을 방지하며, 심장병 및 뇌졸중과 같은 혈전성 질환을
									예방하는 데에도 사용됩니다.</p></td>
						</tr>
						<tr>
							<td rowspan="2" class="image"><img
								src="assets/images/pill2.jpg"></td>
							<td><a class="pillName" href="pillInfo.jsp">파마세티콘(Paracetamol)</a></td>
							<td rowspan="2">
								<div class="bookmark-wrap">
									<button class="bookmark">즐겨찾기</button>
									<i class="las la-star"></i>
								</div>
							</td>
						</tr>
						<tr>
							<td><p class="pillContent">파마세티콘은 해열제 및 진통제로 널리 사용되는
									약물입니다. 그러나 항염증 효과는 없습니다. 파마세티콘은 대부분 가벼운 통증이나 열에 사용되며, 두통, 치통,
									근육통 등의 일반적인 증상을 완화할 수 있습니다.</p></td>
						</tr>
						<tr>
							<td rowspan="2" class="image"><img
								src="assets/images/pill3.jpg"></td>
							<td><a class="pillName" href="pillInfo.jsp">라모티진(Lamotrigine)</a></td>
							<td rowspan="2">
								<div class="bookmark-wrap">
									<button class="bookmark">즐겨찾기</button>
									<i class="las la-star"></i>
								</div>
							</td>
						</tr>
						<tr>
							<td><p class="pillContent">라모티진은 간질 및 양극성 장애 (양극성 우울증 및
									양극성 조울증)의 치료에 사용되는 항경련제 및 정신약물입니다. 라모티진은 신경 세포에서 일어나는 화학 변화를
									조절함으로써 뇌의 활동을 안정화시켜 증상을 완화할 수 있습니다.</p></td>
						</tr>
						<tr>
							<td rowspan="2" class="image"><img
								src="assets/images/pill4.jpg"></td>
							<td><a class="pillName" href="pillInfo.jsp">메트포르민(Metformin)</a></td>
							<td rowspan="2">
								<div class="bookmark-wrap">
									<button class="bookmark">즐겨찾기</button>
									<i class="las la-star"></i>
								</div>
							</td>
						</tr>
						<tr>
							<td><p class="pillContent">메트포르민은 당뇨병 환자에게 처방되는 약물로, 혈당
									수치를 낮추는 데 사용됩니다. 메트포르민은 간에서 포도당 생성을 억제하고, 근육 세포에서 포도당의 흡수를
									촉진함으로써 혈당 수치를 감소시키는 효과가 있습니다.</p></td>
						</tr>
						<tr>
							<td rowspan="2" class="image"><img
								src="assets/images/pill5.jpg"></td>
							<td><a class="pillName" href="pillInfo.jsp">프로바이오틱스(Probiotics)</a></td>
							<td rowspan="2">
								<div class="bookmark-wrap">
									<button class="bookmark">즐겨찾기</button>
									<i class="las la-star"></i>
								</div>
							</td>
						</tr>
						<tr>
							<td><p class="pillContent">프로바이오틱스는 유익한 세균이나 미생물을 포함하는
									건강 보조식품으로, 소화기 건강을 개선하고 면역 체계를 강화하는 데 도움이 됩니다. 프로바이오틱스는 대부분
									유산균이나 비슷한 종류의 미생물로 구성되며, 다양한 형태의 제품으로 판매됩니다.</p></td>
						</tr>
					</table>
				</div> -->

				<!-- Jsp 적용 -->
				<div class="pill-table">
			    <table>
			        <% 
					MEDICINEDAO dao = new MEDICINEDAO();
					List<TB_MEDICINE> medicineList = dao.selectAllMedicine();
			        if (medicineList != null) {
			            for (TB_MEDICINE medicine : medicineList) {
			        %>
			            <tr>
			                <td rowspan="2" class="image"><img src="<%=medicine.getPill_img() %>"></td>
			                <td><a class="pillName" href="pillInfo.jsp"><%=medicine.getPill_name() %></a></td>
			                <td rowspan="2">
			                    <div class="bookmark-wrap">
			                        <button class="bookmark">즐겨찾기</button>
			                        <i class="las la-star"></i>
			                    </div>
			                </td>
			            </tr>
			            <tr>
			                <td><p class="pillContent"><%=medicine.getPill_effect() %></p></td>
			            </tr>
			        <% 
			            }
			        }
			        %>
			    </table>
			</div>

				<div class="page">
					<a href="#" class="first"><i class="las la-angle-double-left"></i></a>
					<a href="#" class="prev"><i class="las la-angle-left"></i></a> <a
						href="#" class="num">1</a> <a href="#" class="num">2</a> <a
						href="#" class="num">3</a> <a href="#" class="num">4</a> <a
						href="#" class="num">5</a> <a href="#" class="next"><i
						class="las la-angle-right"></i></a> <a href="#" class="last"><i
						class="las la-angle-double-right"></i></a>
				</div>
			</div>
		</form>
	</div>

	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/aos.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>