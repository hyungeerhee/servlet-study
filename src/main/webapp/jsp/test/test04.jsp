<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<%
 		double num1 = Double.parseDouble(request.getParameter("num1"));
 		double num2 = Double.parseDouble(request.getParameter("num2"));
 		String operator =  request.getParameter("operator");
 		double result = 0;
 		if(operator.equals("+")) {
 			result = num1 + num2;
 		}
 		if(operator.equals("-")) {
 			result = num1 - num2;
 		}
 		if(operator.equals("X")) {
 			result = num1 * num2;
 		}
 		if(operator.equals("/")) {
 			result = num1 / num2;
 		 }
 		
 		
 		
 		
 	%>
 	
 		<h4>계산 결과</h4>
 		<h2><%= num1 %> <%= operator %> <%= num2 %> = <%= result %></h2>
</body>
</html>