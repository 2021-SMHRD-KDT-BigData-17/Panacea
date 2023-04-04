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
    <link rel="stylesheet" href="assets/css/pillInfo.css">
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
            <div class="pillInfo-wrap">
                <div class="pillInfo-head">
                    <div class="search">
                        <input type="text" id="searchInput" placeholder="제품명/약 문자">
                        <button id="searchButton">검색</button>
                    </div>
                    <div class="list-wrap">
                        <button class="list"><a href="pill.jsp">목록</a></button>
                    </div>
                </div>
                <div class="pillInfo-table">
                    <table>
                        <tr>
                            <td class="title-left"><span>제품명</span></td>
                            <td class="title-right"><span>약 이름</span></td>
                            <td rowspan="3" class="image"><img src="assets/images/rupong.jpg"></td>
                        </tr>
                        <tr>
                            <td class="title-left"><span>제형</span></td>
                            <td class="title-right"><span>약 모양</span></td>
                        </tr>
                        <tr>
                            <td class="title-left"><span>효능ㆍ효과</span></td>
                            <td class="title-right"><span>효능,효과 설명</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="content-head"><span>▶ 용법ㆍ용량</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="content-body"><span>용법,용량 내용</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="content-head"><span>▶ 사용 상의 주의사항</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="content-body">
                                <ol>
                                    <li>주의사항
                                        <ol>
                                            <li>상세설명</li>
                                        </ol>
                                    </li>
                                </ol>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </div>
</body>
</html>