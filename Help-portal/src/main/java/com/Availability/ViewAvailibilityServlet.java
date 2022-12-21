package com.Availability;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ViewAvailibilityServlet")
public class ViewAvailibilityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String empId= request.getParameter("eid");

		
		try {
		     List<Availability> usDetails = AvailabilityDBUtil.validate(empId);
		     request.setAttribute("usDetails", usDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("TAvailabilityProfile.jsp");
		dis.forward(request, response);
		
		
	}

}

