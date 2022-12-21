package com.Request;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateRequestServlet")
public class UpdateRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sId = request.getParameter("sid");
		String name = request.getParameter("name");
		String faculty = request.getParameter("faculty");
		String batch = request.getParameter("batch");
		String module = request.getParameter("module");
		String lesson = request.getParameter("lesson");
		String reqDate = request.getParameter("reqDate");
	    
	    
		boolean isTrue;
		
		isTrue = RequestDBUtil.updaterequest(sId, name, faculty, batch, module, lesson, reqDate);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Studentsuccess.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Studentunsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}