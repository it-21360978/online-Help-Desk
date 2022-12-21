package com.TimeTable;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ViewTimeTableServlett")
public class ViewTimeTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String moduleCode= request.getParameter("mc");
		
		try {
		     List<TimeTable> usDetails = TimeTableDBUtil.validate(moduleCode);
		     request.setAttribute("usDetails", usDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("SMSession.jsp");
		dis.forward(request, response);
		
		
	}

}

