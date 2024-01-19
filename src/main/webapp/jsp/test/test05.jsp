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
		double length = Double.parseDouble(request.getParameter("length"));
		String[] measures = request.getParameterValues("measure");
		//ArrayList<String> resultList = new ArrayList<>();
		String result = "";
		for(int i = 0; i < measures.length; i++) {
			if(measures[i].equals("in")) {
				result += (length * 0.393701) + measures[i] + "<br>"; 
			}
			if(measures[i].equals("yd")) {
				result += (length * 0.010936) + measures[i] + "<br>";
			}
			if(measures[i].equals("ft")) {
				result += (length * 0.032808) + measures[i] + "<br>";
			}
			if(measures[i].equals("m")) {
				result += (length * 0.01) + measures[i] + "<br>";
			}
		}
		
		
	%>
		<h2>변환 결과</h2>
		<h3><%= length %>cm</h3>
		<hr>
		<h3><%= result %></h3>
		

</body>
</html>