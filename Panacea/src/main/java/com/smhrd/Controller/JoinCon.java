package com.smhrd.Controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.TB_USER;
import com.smhrd.domain.USERDAO;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[JoinCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		String email = request.getParameter("user_email");
		String nick = request.getParameter("user_nick");
		Timestamp joinDate = new Timestamp(System.currentTimeMillis());
		// 회원유형(일반 G, 전문의 S, 관리자 A)
		String type = request.getParameter("user_type");
		
		TB_USER joinUser = new TB_USER(id, pw, email, nick, joinDate, type);
		System.out.println(joinUser.toString());
		
		USERDAO dao = new USERDAO();
		int cnt = dao.insertUser(joinUser);
		
		if (cnt > 0) {
			System.out.println("Join Success!");
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			request.setAttribute("joinId", id);
			rd.forward(request, response);
		} else {
			System.out.println("Join Failed!");
			response.sendRedirect("index.html");
		}
	}

}
