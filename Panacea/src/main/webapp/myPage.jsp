<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.domain.WISHLISTDAO" %>
<%@page import="com.smhrd.domain.TB_WISHLIST" %>
<%@page import="java.util.List" %>
    
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
    <link rel="stylesheet" href="assets/css/myPage.css">
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
                        <a class="nav-link" href="pill.jsp">처방약</a>
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

    <div id="content-wrapper">
        <!-- 회원정보 수정폼 -->
        <form action="UpdateCon" method="post">
            <div class="modify-wrap">
                <div class="modify-title">
                    <h2>회원정보</h2>
                    <input type="submit" value="수정">
                </div>
                <table>
                    <tr>
                        <th class="id">아이디</th>
                        <td colspan="2" class="modify-left"><input type="text" name="user_id" class="id-info" value="#" disabled></td>
                    </tr>
                    <tr>
                        <th class="pw">비밀번호</th>
                        <td colspan="2" class="modify-left"><input type="password" name="user_pw" class="pw-info"></td>
                    </tr>
                    <tr>
                        <th class="email">이메일</th>
                        <td colspan="2" class="modify-left"><input type="text" name="user_email" class="email-info"></td>
                    </tr>
                    <tr>
                        <th class="nickname">닉네임</th>
                        <td colspan="2" class="modify-left"><input type="text" name="user_nick" class="nickname-info"></td>
                    </tr>
                    <tr>
                        <th class="type">회원유형</th>
                        <td class="modify-left"><input type="text" name="user_type" class="type-info" value="#" disabled></td>
                    </tr>
                </table>
            </div>
        </form>

        <!-- 즐겨찾기 모음 폼 -->
        <form action="SelectAllWishCon" method="post">
            <div class="bookmark-wrap">
                <div class="bookmark-head">
                    <h5>즐겨찾기 목록</h5>
                    <a href="more.jsp">더보기▶</a>
                </div>
                <div class="bookmark-body">
                    <!-- 사진을 클릭하면 해당 약의 상세정보 페이지로 넘어가기 -->
                    <a href="pillInfo.jsp"><img src="assets/images/강아지7.jpg"></a>
                    <a href="pillInfo.jsp"><img src="assets/images/강아지6.jpg"></a>
                    <a href="pillInfo.jsp"><img src="assets/images/강아지4.jpg"></a>
                    <a href="pillInfo.jsp"><img src="assets/images/강아지3.jpg"></a>
                    <a href="pillInfo.jsp"><img src="assets/images/강아지2.jpg"></a>
                    
<%--                     <% 
					  WISHLISTDAO dao = new WISHLISTDAO(); 
					  List<TB_WISHLIST> selectAllWish = dao.selectAllWish(request.getParameter("user_id")); 
					
					  for(TB_WISHLIST wish : selectAllWish) {
					    %>
					    <a href="pillInfo.jsp?pill_seq=<%= wish.getPill_seq() %>"><img src="assets/images/<%= wish.getPill_seq() %>.jpg"></a>
					    <% 
					  } 
					%> --%>
					                    
                </div>
            </div>
        </form>
    </div>
</body>
</html>