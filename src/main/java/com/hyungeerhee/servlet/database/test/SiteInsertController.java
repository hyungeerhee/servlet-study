package com.hyungeerhee.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hyungeerhee.servlet.common.MysqlService;
@WebServlet("/database/site/insert")
public class SiteInsertController extends HttpServlet {
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `site`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE \r\n"
				+ "('" + name + "', " + url + "');";
		
		int count = mysqlService.update(query);
		response.sendRedirect("/database/test02.jsp");
	}
	

}
