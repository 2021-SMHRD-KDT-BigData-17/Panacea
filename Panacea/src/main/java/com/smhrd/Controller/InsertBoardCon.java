package com.smhrd.Controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.BOARDDAO;
import com.smhrd.domain.TB_BOARD;

public class InsertBoardCon extends HttpServlet {
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
		
		TB_BOARD insert = new TB_BOARD(seq, title, content, file, views, likes, date);
		
		BOARDDAO dao = new BOARDDAO();
		int cnt = dao.insertBoard(insert);
		
		if (cnt > 0) {
			System.out.println("Success write board");
			response.sendRedirect("list.html");
		} else {
			System.out.println("Failed write board!");
			response.sendRedirect("write.html");
		}
	}

}
