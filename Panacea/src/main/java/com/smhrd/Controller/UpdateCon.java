package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.TB_USER;
import com.smhrd.domain.USERDAO;

public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[UpdateCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String pw = request.getParameter("user_pw");
		String email = request.getParameter("user_email");
		String nick = request.getParameter("user_nick");
		
		HttpSession session = request.getSession();
		TB_USER loginUser = (TB_USER)session.getAttribute("loginUser");
		String id = loginUser.getUser_id();
		
		TB_USER update = new TB_USER(id, pw, email, nick);
		
		USERDAO dao = new USERDAO();
		
		int cnt = dao.updateUser(update);
		
		if (cnt > 0) {
			System.out.println("회원정보수정 완료");
			session.setAttribute("loginUser", update);
			response.sendRedirect("main.jsp");
		} else {
			System.out.println("회원정보수정 실패");
			response.sendRedirect("update.jsp");
		}
	}

}
