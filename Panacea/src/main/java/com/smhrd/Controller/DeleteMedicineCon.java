package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MEDICINEDAO;

public class DeleteMedicineCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		int seq = Integer.parseInt(request.getParameter("pill_seq"));
		
		MEDICINEDAO dao = new MEDICINEDAO();
		dao.deleteMedicine(seq);
		
		response.sendRedirect("pill.jsp");
	}

}
