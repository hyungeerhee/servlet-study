<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 제어문 사용하기</title>
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
		
	
		
	%>
	<h4>장 목록</h4>
	<table border = :> 
		<thead> 
			<tr>
				<th>장 목록</th>s
			</tr>
		</thead>
		<tbody>
			<% for(String goods:goodsList) { %>
			<tr> 
				<td> <%= goods %> </td>
			</tr>
		</tbody>
			<% } %>
		
	</table>
	

</body>
</html>