<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
		list.add(map);
		map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
		list.add(map);
		map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
		list.add(map);
		map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
		list.add(map);
		map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
		list.add(map);
		map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
		list.add(map);
		map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
		list.add(map);
		
		String searchMenu = request.getParameter("menu");
		
		
		
	%>
	
	<h3 class="text-center mt-5">검색 결과</h3>
	<table class="table text-center">
		<thead>
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
		</thead>
		<% for (int i = 0; i < list.size(); i++) {
			Map<String, Object> searchMap = list.get(i);
			if(searchMap.get("menu").equals(searchMenu)) {
				
			
			%>
		
		<tbody>
			<tr>
				<td><%= searchMap.get("menu")%></td>
				<td><%= searchMap.get("name")%></td>
				<td><%= searchMap.get("point")%></td>
			</tr>
			<% }} %>
		</tbody>
	</table>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>