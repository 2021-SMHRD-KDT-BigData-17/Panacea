package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[LogoutCon]");
		
		HttpSession session = request.getSession();
		
		// 만약 세션이 존재한다면 = 유저가 로그인 되어있을 경우
		// 현재 세션을 무효화시킨다.
		if (session != null) {
			session.invalidate();
		}
		
		// session.removeAttribute("loginMember");
		// response.sendRedirect("index.html");
		
		System.out.println("Logout Success!");
		response.sendRedirect(request.getContextPath() + "/index.html");
	}

}
