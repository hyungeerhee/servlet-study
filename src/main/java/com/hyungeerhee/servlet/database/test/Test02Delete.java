package com.hyungeerhee.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hyungeerhee.servlet.common.MysqlService;
@WebServlet("/database/site/delete")
public class Test02Delete extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		int count = mysqlService.update("DELETE FROM `site` WHERE `id` = " + id +";");
		
		
		
		response.sendRedirect("/database/test02.jsp");
		
		
	}

}
