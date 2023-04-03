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
    <link rel="stylesheet" href="assets/css/2.css">
    <link rel="stylesheet" href="assets/css/myPage.css">
</head>
<body>
    <!-- NavBar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container flex-lg-column">
            <a class="navbar-brand mx-lg-auto mb-lg-4" href="index.html">
                <span class="h3 fw-bold d-block d-lg-none">동의보감</span>
                <img src="./assets/images/pong.jpg" class="d-none d-lg-block rounded-circle" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto flex-lg-column text-lg-center">
                    
                    <li class="nav-item">
                        <a class="nav-link" href="list.jsp">상비약</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pill.html">처방약</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="myPage.jsp" style="color: #e0f780">내정보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">문의하기</a>
                    </li>
                </ul>
            </div>
            <div class="user-wrap">
				<a href="myPage.jsp"><%=session.getAttribute("joinId")%></a>
                <span>|</span>
                <a href="LogoutCon">로그아웃</a>
            </div>
        </div>
    </nav>
    <!-- // NavBar -->


</body>
</html>