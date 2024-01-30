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
		
		ResultSet resultSet = mysqlService.select("SELECT * FROM `site` ORDER BY `id` DESC;");
		
		
	%>
	<div class="container">
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
					<td><a target="_blank" href="<%= resultSet.getString("url")%>"><%= resultSet.getString("url")%></a></td>
					<td><a class="btn btn-primary btn-sm" href="/database/site/delete?id=<%= resultSet.getString("id")%>">삭제</a></td>
				</tr>
				<% } %>
				
			</tbody>
		</table>
		<a class="btn btn-info d-flex justify-content-center" href="/database/test02-input.jsp"> 즐겨찾기 추가 </a>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>