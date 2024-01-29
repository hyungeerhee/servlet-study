package com.hyungeerhee.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hyungeerhee.servlet.common.MysqlService;

@WebServlet("/database/test01")
public class Test01Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		ResultSet resultSet = mysqlService.select("SELECT * FROM `booking`;");
		
		out.println("<html><head><title>매물 리스트</title></head><body>");
		
		try {
			while(resultSet.next()) {
				
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("<div>매물 주소 : "  + ", 면적 : " + area + ", 타입 : " + type);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String insertQuery = "SELECT * FROM `real_estate`;\r\n"
				+ "\r\n"
				+ "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)\r\n"
				+ "VALUE\r\n"
				+ "(3, \"헤라펠리스 101동 5305호\", 350, \"매매\", 1500000, NULL);";
	}
}
