package com.smhrd.Controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.COMMENTDAO;
import com.smhrd.domain.TB_COMMENT;

public class InsertCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		System.out.println("[InsertCommentcon]");
		
		int cmt_seq = Integer.parseInt(request.getParameter("cmt_seq") != null ? request.getParameter("cmt_seq") : "0");
		int b_seq = Integer.parseInt(request.getParameter("b_seq") != null ? request.getParameter("b_seq") : "0");
		String content = request.getParameter("cmt_content");
		// Timestamp date = new Timestamp(System.currentTimeMillis());
		// int likes = Integer.parseInt(request.getParameter("cmt_likes") != null ? request.getParameter("cmt_likes") : "0");
		// int dislikes = Integer.parseInt(request.getParameter("cmt_dislikes") != null ? request.getParameter("cmt_dislikes") : "0");
		String id = request.getParameter("user_id") != null ? request.getParameter("user_id") : "0";
		
		TB_COMMENT insert = new TB_COMMENT(cmt_seq, b_seq, content, id);
		
		COMMENTDAO dao = new COMMENTDAO();
		int cnt = dao.insertComment(insert);
		
		if (cnt > 0) {
			System.out.println("Success write comment");
			response.sendRedirect("view.jsp");
		} else {
			System.out.println("Failed write board!");
			response.sendRedirect("write.jsp");
		}
	}

}
