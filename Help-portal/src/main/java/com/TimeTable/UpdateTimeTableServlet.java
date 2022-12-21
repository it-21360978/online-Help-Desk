package com.TimeTable;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateTimeTableServlet")
public class UpdateTimeTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String moduleCode = request.getParameter("mc");
		String module = request.getParameter("mod");
		String topic = request.getParameter("topic");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String lecturer = request.getParameter("lecturer");
		String platform = request.getParameter("platform");
		String description = request.getParameter("description");
	    
	    
		boolean isTrue;
		
		isTrue = TimeTableDBUtil.updatetimetable(moduleCode,module,topic,date,time,lecturer,platform,description);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("SMsuccess.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("SMunsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}