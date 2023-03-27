package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.TB_USER;
import com.smhrd.domain.USERDAO;

public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[LoginCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		TB_USER login = new TB_USER(id, pw);
		
		USERDAO dao = new USERDAO();
		TB_USER loginUser = dao.selectUser(login);
		
		if (loginUser != null) {
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
		} else {
			System.out.println("로그인 실패!");
		}
		response.sendRedirect("main.jsp");
	}

}
