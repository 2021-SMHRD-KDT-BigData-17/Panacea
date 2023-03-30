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
		
		// 댓글 번호가 필요한가?
		int seq = Integer.parseInt(request.getParameter("cmt_seq"));
		String id = request.getParameter("user_id");
		String content = request.getParameter("cmt_content");
		Timestamp date = new Timestamp(System.currentTimeMillis());
		String likes = request.getParameter("cmt_likes");
		String dislikes = request.getParameter("cmt_dislikes");
		
		TB_COMMENT insert = new TB_COMMENT(seq, content, date, likes, dislikes);
		
		COMMENTDAO dao = new COMMENTDAO();
		int cnt = dao.insertComment(insert);
		
		if (cnt > 0) {
			System.out.println("Success write comment");
			response.sendRedirect("view.html");
		} else {
			System.out.println("Failed write board!");
			response.sendRedirect("write.comment");
		}
	}

}
