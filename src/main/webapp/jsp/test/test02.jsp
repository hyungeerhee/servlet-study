<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI</title>
</head>
<body>
	<% 
		double height = Double.parseDouble(request.getParameter("height"));
		double weight = Double.parseDouble(request.getParameter("weight"));
		
	 	double bmi = weight/((height/100.0)*(height/100.0));
	 	String result;
	 	if(bmi <= 18.5) {
	 		result = "저체중";
	 	} else if(bmi <= 25) {
	 		result = "정상";
	 	} else if(bmi <= 30) {
	 		result = "과체중";
	 	} else {
	 		result = "비만";
	 	}
	 	
	 	
	 	
		
		
	%>
	<div>
	<h3>BMI 측정 결과</h3>
	<h2>당신은 <%= result %> 입니다.</h2>
	<div>BMI 수치: <%= bmi %></div>
	</div>
</body>
</html>