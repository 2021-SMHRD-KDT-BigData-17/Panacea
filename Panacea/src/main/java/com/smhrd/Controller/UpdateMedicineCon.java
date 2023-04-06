package com.smhrd.Controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MEDICINEDAO;
import com.smhrd.domain.TB_MEDICINE;

public class UpdateMedicineCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String seqStr = request.getParameter("pill_seq");
		BigDecimal seq = null;
		if (seqStr != null && seqStr.matches("\\d+")) {
		    seq = new BigDecimal(seqStr);
		}
		String name = request.getParameter("pill_name");
		String img = request.getParameter("pill_img");
		String effect = request.getParameter("pill_effect");
		String shape = request.getParameter("pill_shape");
		String dosage = request.getParameter("pill_dosage");
		String sideEffect = request.getParameter("pill_side_effect");
		
		TB_MEDICINE update = new TB_MEDICINE(seq, name, img, effect, shape, dosage, sideEffect);
		
		MEDICINEDAO dao = new MEDICINEDAO();
		int cnt = dao.updateMedicine(update);
		
		if (cnt > 0) {
			System.out.println("Success update medicine");
			response.sendRedirect("pill.jsp");
		} else {
			System.out.println("Failed update medicine");
			response.sendRedirect("pillInfo.jsp");
		}
	}

}
