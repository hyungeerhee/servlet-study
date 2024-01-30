package com.hyungeerhee.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hyungeerhee.servlet.common.MysqlService;
@WebServlet("/database/site/insert")
public class Test02Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		PrintWriter out = response.getWriter();
		
		String site = request.getParameter("site");
		String url = request.getParameter("url");
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		int count = mysqlService.update("INSERT INTO `site`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + site + "', '" + url + "');");
		
		
		
		
		response.sendRedirect("/database/test02.jsp");
		
		
	}

}
