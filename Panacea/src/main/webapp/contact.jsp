<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>

        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/index.css" />
        <link rel="stylesheet" href="assets/css/contact.css" />
    </head>
    <body>
        <!-- NavBar -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container flex-lg-column">
                <a class="navbar-brand mx-lg-auto mb-lg-4" href="index.jsp">
                    <span class="h3 fw-bold d-block d-lg-none">동의보감</span>
                    <img src="./assets/images/pong.jpg" class="d-none d-lg-block rounded-circle" alt="" />
                </a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav"
                    aria-controls="navbarNav"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto flex-lg-column text-lg-center">
                        <li class="nav-item">
                            <a class="nav-link" href="list.jsp">상비약</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pill.jsp">처방약</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myPage.jsp">내정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp" style="color: #e0f780">문의하기</a>
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

        <!-- Contact (문의하기) -->
        <div id="content-wrapper">
            <div class="contact-wrap">
                <div class="contact-title">
                    <h6 class="text-brand">양식에 맞게 작성해주세요.</h6>
                    <h1>문의하기</h1>
                </div>

                <div class="contact-content">
                    <form action="#">
                        <div class="contact-head">
                            <input type="text" placeholder="닉네임을 작성하세요." />
                            <input type="email" placeholder="이메일을 작성하세요." />
                        </div>
                        <div class="contact-body">
                            <input type="text" placeholder="제목을 작성하세요." />
                            <textarea placeholder="내용을 작성하세요."></textarea>
                        </div>
                        <div class="contact-btn">
                            <button type="submit" class="contactButton">보내기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- </section> -->
        <!-- // Contact (문의하기) -->
    </body>
</html>
