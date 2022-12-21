package com.Request;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteRequestServlet")
public class DeleteRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sId = request.getParameter("sid");
	    
		boolean isTrue;
		
		isTrue = RequestDBUtil.deleterequest(sId);
		
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