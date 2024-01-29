<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hyungeerhee.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		ResultSet resultSet = mysqlService.select("Select `name`, `url` FROM `site`;");
		
		
	%>
	<table class="table text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		
		<tbody>
			<% while(resultSet.next()) { %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><a href=""><%= resultSet.getString("url")%></a></td>
			</tr>
			<% } %>
		</tbody>
	</table>
	

</body>
</html>