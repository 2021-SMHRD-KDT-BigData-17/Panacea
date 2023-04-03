package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.BOARDDAO;
import com.smhrd.domain.COMMENTDAO;

public class DeleteCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("user_id");
		
		COMMENTDAO dao = new COMMENTDAO();
		dao.deleteComment(id);
		
		response.sendRedirect("view.jsp");
	}

}
