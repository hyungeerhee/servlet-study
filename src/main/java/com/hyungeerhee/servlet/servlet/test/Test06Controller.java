package com.hyungeerhee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");
		
		int num1 = Integer.parseInt(number1);
		int num2 = Integer.parseInt(number2);
		
		int add = num1 + num2;
		int sub = num1 - num2;
		int multi = num1 * num2;
		int div = num1 / num2;
		
		/* {"addtion":10, "substraction":5, "multiplication":25, "division":2} */
		out.println("{\"addition\":" + add + ",\"substrion\":" + sub + ",\"multiplication\":" + multi + ",\"division\":" + div + "}");
	}

}
