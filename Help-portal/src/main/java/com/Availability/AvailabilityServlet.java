package com.Availability;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AvailabilityServlet")
public class AvailabilityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String empId = request.getParameter("eid");
		String name = request.getParameter("nameE");
		String faculty = request.getParameter("faculty");
		String module = request.getParameter("module");
		String email = request.getParameter("email");
		String platform = request.getParameter("platform");
		String day = request.getParameter("day");
		String time = request.getParameter("time");
		
		boolean isTrue;
		
		isTrue = AvailabilityDBUtil.insertavailability(empId, name, faculty, module, email, platform, day, time);

		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Tsuccess.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Tunsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
