package com.Availability;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class AvailabilityDBUtil {
	
	//insert
	public static boolean insertavailability(String empId, String name, String faculty, String module, String email, String platform, String day, String time) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "admin123";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "insert availability values ('"+empId+"','"+name+"','"+faculty+"', '"+module+"', '"+email+"', '"+platform+"', '"+day+"','"+time+"')";
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
    public static List<Availability> validate(String empId){
		
		ArrayList<Availability> us = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "admin123";
		
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from availability where empId = '"+empId+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				String empI = rs.getString(1);
				String name = rs.getString(2);
				String faculty = rs.getString(3);
				String module = rs.getString(4);
				String email = rs.getString(5);
				String platform = rs.getString(6);
				String day= rs.getString(7);
				String time = rs.getString(8);
				
				Availability u = new Availability(empI,name,faculty,module,email,platform,day,time);
				us.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
    
    //update
    public static boolean updateavailability(String empId, String name, String faculty, String module, String email, String platform, String day, String time){
		
	    boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "admin123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "update availability set name='"+name+"', faculty='"+faculty+"', email='"+email+"', platform='"+platform+"', day='"+day+"', time='"+time+"', module='"+module+"'"
					+ "where empId='"+empId+"'";
					 
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
    
 public static boolean deleteavailability(String empId){
		
	    boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "admin123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "Delete from availability where empId = '"+empId+"'";
					 
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