package com.smhrd.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.BoardDAO;
import com.smhrd.domain.TB_BOARD;

public class InsertBoardCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String seq = request.getParameter("b_seq");
		String title = request.getParameter("b_title");
		String content = request.getParameter("b_content");
		String file = request.getParameter("b_file");
		String views = request.getParameter("b_views");
		String likes = request.getParameter("b_likes");
		String date = request.getParameter("b_date");
		
		TB_BOARD insert = new TB_BOARD(seq, title, content, file, views, likes, date);
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.insertBoard(insert);
		
		if (cnt > 0) {
			System.out.println("게시글 작성 성공!");
			response.sendRedirect("main.jsp");
		} else {
			System.out.println("게시글 작성 실패!");
			response.sendRedirect("main.jsp");
		}
	}

}
