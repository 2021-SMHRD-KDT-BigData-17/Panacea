package com.smhrd.Controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.BOARDDAO;
import com.smhrd.domain.TB_BOARD;

public class UpdateBoardCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		int seq = Integer.parseInt(request.getParameter("b_seq"));
		String title = request.getParameter("b_title");
		String content = request.getParameter("b_content");
		String file = request.getParameter("b_file");
		int views = Integer.parseInt(request.getParameter("b_views"));
		int likes = Integer.parseInt(request.getParameter("b_likes"));
		Timestamp date = new Timestamp(System.currentTimeMillis());
		int category_seq = Integer.parseInt(request.getParameter("category_seq"));
		
		TB_BOARD update = new TB_BOARD(title, content, category_seq);
		
		BOARDDAO dao = new BOARDDAO();
		int cnt = dao.updateBoard(update);
		
		if (cnt > 0) {
			System.out.println("Success update board");
			response.sendRedirect("list.html");
		} else {
			System.out.println("Failed update board");
			response.sendRedirect("list.html");
		}
	}

}
