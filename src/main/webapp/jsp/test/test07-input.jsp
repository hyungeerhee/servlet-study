<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="pl-3 pt-3">
	<h3>메뉴검색</h3>
	<form method="get" action="/jsp/test/test07.jsp">
		<input type = "text" name = "menu">
		<input type="checkbox" class="mr-1"><label>4점 이하 제외</label>
		<br>
		<button type="submit" class="mt-2 btn btn-success">검색</button>
	</form>
	</div>
</body>
</html>