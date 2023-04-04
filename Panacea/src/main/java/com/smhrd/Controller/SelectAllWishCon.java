package com.smhrd.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.TB_WISHLIST;
import com.smhrd.domain.WISHLISTDAO;

public class SelectAllWishCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("user_id");
		
		WISHLISTDAO dao = new WISHLISTDAO();
		List<TB_WISHLIST> selectAllWish = dao.selectAllWish(id);
		
        request.setAttribute("selectAllWish", selectAllWish);
        RequestDispatcher dispatcher = request.getRequestDispatcher("myPage.jsp");
        dispatcher.forward(request, response);
		
	}

}
