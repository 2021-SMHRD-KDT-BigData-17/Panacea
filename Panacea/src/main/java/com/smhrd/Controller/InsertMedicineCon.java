package com.smhrd.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MEDICINEDAO;
import com.smhrd.domain.TB_MEDICINE;

public class InsertMedicineCon extends HttpServlet {
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
		
		TB_MEDICINE insert = new TB_MEDICINE(seq, name, img, effect, shape, dosage, sideEffect);
		
		MEDICINEDAO dao = new MEDICINEDAO();
		int cnt = dao.insertMedicine(insert);
		
		if (cnt > 0) {
			System.out.println("Success insert medicine");
			response.sendRedirect("pill.jsp");
		} else {
			System.out.println("Failed insert medicine");
			response.sendRedirect("pillInfo.jsp");
		}
		
	}

}
