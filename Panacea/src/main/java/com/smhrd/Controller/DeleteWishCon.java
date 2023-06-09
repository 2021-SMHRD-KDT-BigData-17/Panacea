package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.WISHLISTDAO;

public class DeleteWishCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("user_id");
		String seq = request.getParameter("phill_seq");
		
		WISHLISTDAO dao = new WISHLISTDAO();
		dao.deleteWish(id, seq);
		
		response.sendRedirect(request.getContextPath() + "/pillInfo?id=" + seq);
	}

}
