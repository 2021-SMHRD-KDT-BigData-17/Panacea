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
    <link rel="stylesheet" href="assets/css/pill.css">
</head>
<body>
     <!-- NavBar -->
     <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container flex-lg-column">
            <a class="navbar-brand mx-lg-auto mb-lg-4" href="index.jsp">
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
                        <a class="nav-link" href="pill.jsp" style="color: #e0f780">처방약</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="myPage.jsp">내정보</a>
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

    <div id="content-wrapper">
        <form action="#">
            <div class="pill-wrap">
                <div class="search">
                    <input type="text" id="searchInput" placeholder="제품명/약 문자">
                    <button id="searchButton">검색</button>
                </div>

                <div class="pill-table">
                    <table>
                        <tr>
                            <td rowspan="2" class="image"><img src="assets/images/루퐁1.jpg"></td>
                            <td><a class="pillName" href="pillInfo.jsp">약 이름 1</a></td>
                            <td rowspan="2">
                                <div class="bookmark-wrap">
                                    <button class="bookmark">즐겨찾기</button>
                                    <i class="las la-star"></i>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="pillContent">약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용</p></td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="image"><img src="assets/images/루퐁2.jpg"></td>
                            <td><a class="pillName" href="pillInfo.jsp">약 이름 2</a></td>
                            <td rowspan="2">
                                <div class="bookmark-wrap">
                                    <button class="bookmark">즐겨찾기</button>
                                    <i class="las la-star"></i>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="pillContent">약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용</p></td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="image"><img src="assets/images/루퐁3.jpg"></td>
                            <td><a class="pillName" href="pillInfo.jsp">약 이름 3</a></td>
                            <td rowspan="2">
                                <div class="bookmark-wrap">
                                    <button class="bookmark">즐겨찾기</button>
                                    <i class="las la-star"></i>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="pillContent">약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용</p></td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="image"><img src="assets/images/루퐁4.jpg"></td>
                            <td><a class="pillName" href="pillInfo.jsp">약 이름 4</a></td>
                            <td rowspan="2">
                                <div class="bookmark-wrap">
                                    <button class="bookmark">즐겨찾기</button>
                                    <i class="las la-star"></i>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="pillContent">약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용</p></td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="image"><img src="assets/images/루퐁5.jpg"></td>
                            <td><a class="pillName" href="pillInfo.jsp">약 이름 5</a></td>
                            <td rowspan="2">
                                <div class="bookmark-wrap">
                                    <button class="bookmark">즐겨찾기</button>
                                    <i class="las la-star"></i>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="pillContent">약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용 약 내용</p></td>
                        </tr>
                    </table>
                </div>

                <div class="page">
                    <a href="#" class="first"><i class="las la-angle-double-left"></i></a>
                    <a href="#" class="prev"><i class="las la-angle-left"></i></a>
                    <a href="#" class="num">1</a>
                    <a href="#" class="num">2</a>
                    <a href="#" class="num">3</a>
                    <a href="#" class="num">4</a>
                    <a href="#" class="num">5</a>
                    <a href="#" class="next"><i class="las la-angle-right"></i></a>
                    <a href="#" class="last"><i class="las la-angle-double-right"></i></a>
                </div>
            </div>
        </form>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/aos.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>