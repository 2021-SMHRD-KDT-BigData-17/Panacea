package com.smhrd.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MEDICINEDAO;
import com.smhrd.domain.TB_MEDICINE;

public class SelectAllMedicineCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		int seq = Integer.parseInt(request.getParameter("pill_seq"));
		String name = request.getParameter("pill_name");
		String img = request.getParameter("pill_img");
		String effect = request.getParameter("pill_effect");
		String shape = request.getParameter("pill_shape");
		String dosage = request.getParameter("pill_dosage");
		String sideEffect = request.getParameter("pill_side_effect");
		
		TB_MEDICINE selectAll = new TB_MEDICINE(seq, name, img, effect, shape, dosage, sideEffect);
		
		MEDICINEDAO dao = new MEDICINEDAO();
		List<TB_MEDICINE> cnt = dao.selectAllMedicine();
		
		if (cnt != null) {
			System.out.println("Success select all medicine list");
			response.sendRedirect("pill.jsp");
		} else {
			System.out.println("Failed select all medicine list");
			response.sendRedirect("pill.jsp");
		}
	}

}
