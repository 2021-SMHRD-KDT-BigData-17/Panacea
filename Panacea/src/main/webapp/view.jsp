<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.domain.COMMENTDAO" %>
<%@page import="com.smhrd.domain.TB_COMMENT" %>
<%@page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>동의보감</title>

    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/aos.css">
    <link rel="stylesheet" href="./assets/css/line-awesome.min.css">
    <link rel="stylesheet" href="./assets/css/1.css">
    <link rel="stylesheet" href="./assets/css/view.css">
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
                        <a class="nav-link" href="list.jsp" style="color: #e0f780">상비약</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pill.jsp">처방약</a>
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
        <form action="InsertCommentCon" method="post">
            <div class="board-view-wrap">
                <div class="board-head">
                    <div class="board-head-left">
                        <span class="category">[말머리]</span>
                        <h5 class="title">제목</h5>
                    </div>
                    <div class="board-head-right">
                        <button class="list"><a href="list.jsp">목록</a></button>
                    </div>
                </div>
                <div class="board-info">
                    <span class="writer">
                        작성자1
                    </span>
                    <span>
                        <span class="cnt">
                            조회 10
                        </span>
                    </span>
                    <span class="date">
                        2023.03.XX
                    </span>
                </div>
                <div class="board-content">
                    <p class="content">
                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia, atque.
                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia, atque.
                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia, atque.
                    </p>
                </div>
                <div class="board-btn">
                    <div class="board-btn-left">
                        <div class="btn-coment">
                            <i class="las la-comments"></i>
                            <span>댓글</span>
                        </div>
                        <div class="btn-like">
                            <i class="las la-thumbs-up"></i>
                            <button class="like">추천</button>
                        </div>
                    </div>
                    <div class="board-btn-right">
                        <button class="edit">수정</button>
                        <span>|</span>
                        <button class="delete">삭제</button>
                    </div>                    
                </div>
                <div class="board-coment">
                    <div class="coment-btn">
                        <textarea name="" class="comentInput" placeholder="댓글을 작성하세요."></textarea>
                        <input type="submit" class="comentButton" value="등록">
                    </div>
					<%-- <p class="writer"><%= session.getAttribute("joinId") %></p> --%>
					<p class="coment">
					    <%
					    COMMENTDAO dao = new COMMENTDAO();
					    List<TB_COMMENT> commentList = dao.selectAllComment();
					    
					    if (commentList != null) {
					        for (TB_COMMENT comment : commentList) {
					    %>
					            <p><%= comment.getCmt_seq() %></p>
					            <p><%= comment.getCmt_content() %></p>
					            <p><%= comment.getUser_id() %></p>
					    <%
					        }
					    }
					    %>
					</p>
                </div>
            </div>
        </form>
    </div>

    <script src="./assets/js/bootstrap.bundle.min.js"></script>
    <script src="./assets/js/aos.js"></script>
    <script src="./assets/js/main.js"></script>
</body>
</html>