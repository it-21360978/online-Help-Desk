package com.Availability;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteaAvailabilityServlet")
public class DeleteaAvailabilityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String empId = request.getParameter("eid");
	    
		boolean isTrue;
		
		isTrue = AvailabilityDBUtil.deleteavailability(empId);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Tsuccess.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Tunsuccess.jsp");
			dis.forward(request, response);
		}
	
	}

}