package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		// 댓글 번호가 필요한가?
		// int seq = Integer.parseInt(request.getParameter("cmt_seq"));
		String id = request.getParameter("user_id");
		String content = request.getParameter("cmt_content");
		String likes = request.getParameter("cmt_likes");
		String dislikes = request.getParameter("cmt_dislikes");
	}

}
