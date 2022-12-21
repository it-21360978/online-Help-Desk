package com.TimeTable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class TimeTableDBUtil {
	
	//insert 
	public static boolean inserttimetable(String moduleCode, String module, String topic, String date, String time, String lecturer, String platform, String description) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "admin123";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "insert into time_table values ('"+moduleCode+"','"+module+"','"+topic+"', '"+date+"', '"+time+"', '"+lecturer+"', '"+platform+"','"+description+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	} 
	
	//validate
    public static List<TimeTable> validate(String moduleCode){
		
		ArrayList<TimeTable> us = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "admin123";
		
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from time_table where moduleCode = '"+moduleCode+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				String moduleC = rs.getString(1);
				String moduleS = rs.getString(2);
				String topic = rs.getString(3);
				String date = rs.getString(4);
				String time = rs.getString(5);
				String lecturer = rs.getString(6);
				String platform= rs.getString(7);
				String description = rs.getString(8);
				
				TimeTable u = new TimeTable(moduleC,moduleS,topic,date,time,lecturer,platform,description);
				us.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
    
    //update
    public static boolean updatetimetable(String moduleCode, String module, String topic, String date, String time, String lecturer, String platform, String description){
		
	    boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "admin123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "update time_table set module='"+module+"', topic='"+topic+"', date='"+date+"', time='"+time+"', lecturer='"+lecturer+"', platform='"+platform+"', description='"+description+"'"
					+ "where moduleCode='"+moduleCode+"'";
					 
		    int rs = stmt.executeUpdate(sql);
		    
		    if(rs > 0) {
		    	isSuccess= true;
		    }
		    else {
		    	isSuccess= false;
		    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
		return isSuccess;
	}
    
    
    //delete
    
 public static boolean deletetimetable(String moduleCode){
		
	    boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "admin123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "Delete from time_table where moduleCode = '"+moduleCode+"'";
					 
		    int rs = stmt.executeUpdate(sql);
		    
		    if(rs > 0) {
		    	isSuccess= true;
		    }
		    else {
		    	isSuccess= false;
		    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
		return isSuccess;
	}

	
	
}