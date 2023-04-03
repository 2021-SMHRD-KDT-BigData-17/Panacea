package com.smhrd.Controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.BOARDDAO;
import com.smhrd.domain.TB_BOARD;

public class SelectAllBoardCon extends HttpServlet {
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
		
		TB_BOARD selectAll = new TB_BOARD(title, content, category_seq);
		
		BOARDDAO dao = new BOARDDAO();
		List<TB_BOARD> cnt = dao.selectAllBoard(selectAll);
		
		if (cnt != null) {
			System.out.println("Success select all board list");
			response.sendRedirect("list.jsp");
		} else {
			System.out.println("Failed select all board list");
			response.sendRedirect("list.jsp");
		} 
	}

}
