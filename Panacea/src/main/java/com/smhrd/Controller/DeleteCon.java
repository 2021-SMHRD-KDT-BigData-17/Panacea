package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.USERDAO;

public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[DeleteCon]");
		
		String id = request.getParameter("user_id");
		
		USERDAO dao = new USERDAO();
		
		int cnt = dao.deleteUser(id);
		
		response.sendRedirect("index.jsp");
	}

}
