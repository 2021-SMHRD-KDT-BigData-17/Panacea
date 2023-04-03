<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>동의보감</title>
	
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/aos.css">
    <link rel="stylesheet" href="./assets/css/line-awesome.min.css">
    <link rel="stylesheet" href="./assets/css/index.css">
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar">
    <!-- NavBar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container flex-lg-column">
            <a class="navbar-brand mx-lg-auto mb-lg-4" href="index.jsp">
                <span class="h3 fw-bold d-block d-lg-none">동의보감</span>
                <img src="./assets/images/pong.jpg" class="d-none d-lg-block rounded-circle">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto flex-lg-column text-lg-center">
                    <li class="nav-item">
                        <a class="nav-link" href="#home">페이지 소개</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#service1">기능 소개 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#service2">기능 소개 2</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#service3">기능 소개 3</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="signIn.html">로그인</a>
                        <!-- 로그인 X 상태 : 유저 닉네임, 로그아웃 버튼 안 보이게 -->
                    </li>
                </ul>
            </div>
            <div class="user-wrap">
                <a href="myPage.jsp"><%=session.getAttribute("joinId")%></a>
                <span>|</span>
                <a href="LogoutCon">로그아웃</a>
                <!-- 로그인 O 상태 : 로그인 버튼 안 보이게 -->
            </div>
        </div>
    </nav>
    <!-- // NavBar -->

    <!-- <a href="#home" id="up"><i class="las la-arrow-circle-up"></i></a> -->

    <!-- Content Wrapper -->
    <div id="content-wrapper">

        <!-- Home (페이지 소개) -->
        <section id="home" class="full-height px-lg-5">

            <div class="container">
                <div class="row">
                    <div class="col-lg-10">
                        <h1 class="display-4 fw-bold" data-aos="fade-up">동의보감</h1>
                        <h2 data-aos="fade-up"><span class="text-brand">페이지 소개</span></h2>
                        <p class="lead mt-2 mb-4" data-aos="fade-up" data-aos-delay="200">1. 상비약 커뮤니티 &nbsp;&nbsp;&nbsp; 2. 처방약 정보 검색 &nbsp;&nbsp;&nbsp; 3. 내정보</p>
                        <div data-aos="fade-up" data-aos-delay="400">
                            <a href="list.jsp" class="btn btn-brand me-3">서비스 페이지 이동</a>
                            <a href="signIn.html" class="link-custom">회원가입/로그인 이동</a>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- // Home (페이지 소개) -->

        <!-- Service1 (기능소개 1) -->
        <section id="service1" class="full-height px-lg-5">
            <div class="container">

                <div class="row pb-4" data-aos="fade-up">
                    <div class="col-lg-8">
                        <h6 class="text-brand">기능 소개1</h6>
                        <h1>상비약 커뮤니티</h1>
                    </div>
                </div>

                <div class="row gy-4">

                    <div class="col-md-6" data-aos="fade-up">
                        <div class="box-custom p-4 rounded-4 bg-base shadow-effect">
                            <div class="box-custom-text">
                                <div class="iconbox one1 rounded-4 mb-4">
                                    <i class="las la-tasks mt-2"></i>
                                </div>
                                <div class="two2 mx-lg-2">
                                    <h4>말머리 (게시글 분류)</h4>
                                </div>
                            </div>
                            <div class="box-custom-image rounded-4">
                                <img src="assets/images/이미지/상비약1.png" class="rounded-4">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                        <div class="box-custom p-4 rounded-4 bg-base shadow-effect">
                            <div class="box-custom-text">
                                <div class="iconbox one1 rounded-4 mb-4">
                                    <i class="las la-edit mt-2"></i>
                                </div>
                                <div class="two2 mx-lg-2">
                                    <h4>게시글 쓰기</h4>
                                </div>
                            </div>
                            <div class="box-custom-image rounded-4">
                                <img src="assets/images/이미지/상비약2.png" class="rounded-4">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6" data-aos="fade-up" data-aos-delay="400">
                        <div class="box-custom p-4 rounded-4 bg-base shadow-effect">
                            <div class="box-custom-text">
                                <div class="iconbox one1 rounded-4 mb-4">
                                    <i class="lar la-comments mt-2"></i>
                                </div>
                                <div class="two2 mx-lg-2">
                                    <h4>댓글 쓰기</h4>
                                </div>
                            </div>
                            <div class="box-custom-image rounded-4">
                                <img src="assets/images/이미지/상비약3.png" class="rounded-4">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6" data-aos="fade-up" data-aos-delay="600">
                        <div class="box-custom p-4 rounded-4 bg-base shadow-effect">
                            <div class="box-custom-text">
                                <div class="iconbox one1 rounded-4 mb-4">
                                    <i class="las la-thumbs-up mt-2"></i>
                                </div>
                                <div class="two2 mx-lg-2">
                                    <h4>추천하기</h4>
                                </div>
                            </div>
                            <div class="box-custom-image rounded-4">
                                <img src="assets/images/이미지/상비약4.png" class="rounded-4">
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </section>
        <!-- // Services1 (기능소개1) -->

        <!-- Service2 (기능소개2) -->
        <section id="service2" class="full-height px-lg-5">
            <div class="container">

                <div class="row pb-4" data-aos="fade-up">
                    <div class="col-lg-8">
                        <h6 class="text-brand">기능 소개2</h6>
                        <h1>처방약 정보 검색</h1>
                    </div>
                </div>

                <div class="row gy-4">
                    <div class="col-md-6" data-aos="fade-up">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-image rounded-4">
                                <img class="rounded-4" src="assets/images/이미지/처방약1.png" alt="">
                            </div>
                            <div class="card-custom-content p-4">
                                <p class="p-content">제품명 또는 약에 적힌 문자로 검색</p>
                                <!-- <a href="#" class="link-custom">Read More</a> -->
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-image rounded-4">
                                <img class="rounded-4" src="assets/images/이미지/처방약2.png" alt="">
                            </div>
                            <div class="card-custom-content p-4">
                                <p class="p-content">원하는 약 즐겨찾기 등록/해제</p>
                                <!-- <a href="#" class="link-custom">Read More</a> -->
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- // Service2 (기능소개2) -->
        
        <!-- Service3 (기능소개3) -->
        <section id="service3" class="full-height px-lg-5">
            <div class="container">

                <div class="row pb-4" data-aos="fade-up">
                    <div class="col-lg-8">
                        <h6 class="text-brand">기능 소개3</h6>
                        <h1>내정보</h1>
                    </div>
                </div>

                <div class="row gy-4">
                    <div class="col-md-6" data-aos="fade-up">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-image rounded-4">
                                <img class="rounded-4" src="assets/images/이미지/내정보1.png" alt="">
                            </div>
                            <div class="card-custom-content p-4">
                                <p class="p-content">제품명 또는 약에 적힌 문자로 검색</p>
                                <!-- <a href="#" class="link-custom">Read More</a> -->
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-image rounded-4">
                                <img class="rounded-4" src="assets/images/이미지/내정보2.png" alt="">
                            </div>
                            <div class="card-custom-content p-4">
                                <p class="p-content">원하는 약 즐겨찾기 등록/해제</p>
                                <!-- <a href="#" class="link-custom">Read More</a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- // Service3 (기능소개3) -->

        <!-- Contact (문의하기) -->
        <!-- <section id="contact" class="full-height px-lg-5">
            <div class="container">

                <div class="row justify-content-center text-center">
                    <div class="col-lg-8 pb-4" data-aos="fade-up">
                        <h6 class="text-brand">양식에 맞게 작성해주세요.</h6>
                        <h1>문의하기</h1>
                    </div>

                    <div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">
                        <form action="#" class="row g-lg-3 gy-3">
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" placeholder="닉네임을 작성하세요.">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" class="form-control" placeholder="이메일을 작성하세요.">
                            </div>
                            <div class="form-group col-12">
                                <input type="text" class="form-control" placeholder="제목을 작성하세요.">
                            </div>
                            <div class="form-group col-12">
                                <textarea name="" rows="4" class="form-control" placeholder="내용을 작성하세요."></textarea>
                            </div>
                            <div class="form-group col-12 d-grid">
                                <button type="submit" class="btn btn-brand">보내기</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </section> -->
        <!-- // Contact (문의하기) -->

        <!-- Footer -->
        <footer class="py-3 px-lg-5">
            <div class="container">
                <div class="row gy-4 justify-content-between">
                    <div class="col-auto">
                        <p class="mt-2">Copyright</p>
                    </div>
                    <div class="col-auto">
                        <div class="social-icons mt-1">
                            <a href="#"><i class="lab la-twitter"></i></a>
                            <a href="#"><i class="lab la-instagram"></i></a>
                            <a href="#"><i class="lab la-facebook"></i></a>
                            <a href="#"><i class="lab la-github"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>
    <!-- // Content Wrapper -->

    <script src="./assets/js/bootstrap.bundle.min.js"></script>
    <script src="./assets/js/aos.js"></script>
    <script src="./assets/js/main.js"></script>

</body>
</html>