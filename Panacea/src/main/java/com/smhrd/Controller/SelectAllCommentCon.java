package com.smhrd.Controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.COMMENTDAO;
import com.smhrd.domain.TB_COMMENT;

public class SelectAllCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		int seq = Integer.parseInt(request.getParameter("cmt_seq"));
		// 사용자 id를 가져오려면 DB 테이블에 추가해야할까?
		String id = request.getParameter("user_id");
		String content = request.getParameter("cmt_content");
		Timestamp date = new Timestamp(System.currentTimeMillis());
		String likes = request.getParameter("cmt_likes");
		String dislikes = request.getParameter("cmt_dislikes");
		
		TB_COMMENT selectAll = new TB_COMMENT(seq, content, date, likes, dislikes);
		
		COMMENTDAO dao = new COMMENTDAO();
		List<TB_COMMENT> cnt = dao.selectAllComment(selectAll);
		
		if (cnt != null) {
			System.out.println("Success select all comment list");
			response.sendRedirect("view.html");
		} else {
			System.out.println("Failed select all comment list");
			response.sendRedirect("view.html");
		}
	}

}
