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
<link rel="stylesheet" href="assets/css/pillInfo.css">
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

	<!-- 처방약 상세정보 Form -->
	<!-- SelectOneMedicineCon -->
	<div id="content-wrapper">
		<form action="#">
			<div class="pillInfo-wrap">
				<div class="pillInfo-head">
					<div class="search">
						<input type="text" id="searchInput" placeholder="제품명/약 문자">
						<button id="searchButton">검색</button>
					</div>
					<div class="list-wrap">
						<button class="list">
							<a href="pill.jsp">목록</a>
						</button>
					</div>
				</div>
				<div class="pillInfo-table">
					<table>
						<tr>
							<td class="title-left"><span>제품명</span></td>
							<td class="title-right"><span>아스피린(Aspirin)</span></td>
							<td rowspan="3" class="image"><img
								src="assets/images/aspirin.jpg"></td>
						</tr>
						<tr>
							<td class="title-left"><span>제형</span></td>
							<td class="title-right"><span>작고 둥근 형태의 백색 혹은 노란색의
									정제약</span></td>
						</tr>
						<tr>
							<td class="title-left"><span>효능ㆍ효과</span></td>
							<td class="title-right"><span>해열제, 진통제, 항염증제, 혈전 예방제</span></td>
						</tr>
						<tr>
							<td colspan="3" class="content-head"><span>▶ 용법ㆍ용량</span></td>
						</tr>
						<tr>
							<td colspan="3" class="content-body"><span>의사의 지시에 따라
									복용. 일반적으로 성인의 경우 325mg 650mg을 하루 24회 복용</span></td>
						</tr>
						<tr>
							<td colspan="3" class="content-head"><span>▶ 사용 상의
									주의사항</span></td>
						</tr>
						<tr>
							<td colspan="3" class="content-body">
								<ol>
									<li>복용 시 위장장애, 출혈 등의 부작용이 발생할 수 있으므로, 의사의 지시에 따라 적절한 용량과
										기간을 지켜야 합니다. 특히 임신중인 여성, 소아, 청소년, 고령자, 혈액질환, 위장궤양 등의 환자는 주의가
										필요합니다.</li>
								</ol>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</div>

	<!-- Jsp 적용 -->
<%-- 	<div id="content-wrapper">
		<form action="SelectByOneMedicineCon" method="post">
			<div class="pillInfo-wrap">
				<div class="pillInfo-head">
					<div class="search">
						<input type="text" id="searchInput" placeholder="제품명/약 문자">
						<button id="searchButton">검색</button>
					</div>
					<div class="list-wrap">
						<button class="list">
							<a href="pill.jsp">목록</a>
						</button>
					</div>
				</div>
				
				<div class="pillInfo-table">
					<%
					MEDICINEDAO dao = new MEDICINEDAO();
					TB_MEDICINE medicine = dao.selectAllMedicine();

					if (medicine != null) {
					%>
					<table>
						<tr>
							<td class="title-left"><span>제품명</span></td>
							<td class="title-right"><span><%=medicine.getPill_name()%></span></td>
							<td rowspan="3" class="image"><img
								src="<%=medicine.getPill_img()%>"></td>
						</tr>
						<tr>
							<td class="title-left"><span>제형</span></td>
							<td class="title-right"><span><%=medicine.getPill_shape()%></span></td>
						</tr>
						<tr>
							<td class="title-left"><span>효능ㆍ효과</span></td>
							<td class="title-right"><span><%=medicine.getPill_effect()%></span></td>
						</tr>
						<tr>
							<td colspan="3" class="content-head"><span>▶ 용법ㆍ용량</span></td>
						</tr>
						<tr>
							<td colspan="3" class="content-body"><span><%=medicine.getPill_dosage()%></span></td>
						</tr>
						<tr>
							<td colspan="3" class="content-head"><span>▶ 사용 상의
									주의사항</span></td>
						</tr>
						<tr>
							<td colspan="3" class="content-body">
								<ol>
									<li>주의사항
										<ol>
											<li><%=medicine.getPill_side_effect()%></li>
										</ol>
									</li>
								</ol>
							</td>
						</tr>
					</table>
					<%
					}
					%>
				</div>
			</div>
		</form>
	</div> --%>

</body>
</html>