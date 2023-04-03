package com.smhrd.Controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.COMMENTDAO;
import com.smhrd.domain.TB_COMMENT;

public class UpdateCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String content = request.getParameter("cmt_content");
		Timestamp date = new Timestamp(System.currentTimeMillis());
		int likes = Integer.parseInt(request.getParameter("cmt_likes") != null ? request.getParameter("cmt_likes") : "0");
		int dislikes = Integer.parseInt(request.getParameter("cmt_dislikes") != null ? request.getParameter("cmt_dislikes") : "0");
		
		TB_COMMENT update = new TB_COMMENT(content, date, likes, dislikes);
		
		COMMENTDAO dao = new COMMENTDAO();
		int cnt = dao.updateComment(update);
		
		if (cnt > 0) {
			System.out.println("Success update comment");
			response.sendRedirect("view.jsp");
		} else {
			System.out.println("Failed update comment");
			response.sendRedirect("write.jsp");
		}
	}

}
