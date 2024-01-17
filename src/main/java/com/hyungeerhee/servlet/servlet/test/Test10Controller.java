package com.hyungeerhee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	@Override
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String realId = userMap.get("id");
		out.println("<html><head><title>postmethod</title><head><body>");
		if (realId.equals(id)) {
			String realPassword = userMap.get("password");
			if(password.equals(realPassword)) {
				out.println("<h3>" + userMap.get("name") + "님 환영 합니다.<h3>" + "</body><html>"); 
				
				
			} else { 
				out.println("password가 일치하지 않습니다." + "</body><html>");
		
				
			}
            
		} else {
			out.println("id가 일치하지 않습니다." + "</body><html>");
		}
	}
}