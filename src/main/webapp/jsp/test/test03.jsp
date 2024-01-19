<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.text.SimpleDateFormat" %>    
<%@ page import = "java.util.Date" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 출력</title>
</head>
<body>
    <%
           
    SimpleDateFormat date = new SimpleDateFormat("yyyy년MM월dd일");
	SimpleDateFormat time = new SimpleDateFormat("HH시mm분ss초");
	
	String result;
	String link = request.getParameter("link");
	if(link.equals("date")) {
		result = "오늘 날짜" + date.format(new Date());
		
	} else { 
		result = "현재시간" + time.format(new Date());
	}
	
	
	
	%>
	
		
	 
	<h3><%= result %></h3>
	
	
	
	
	
	
	
	
	
	

</body>
</html>