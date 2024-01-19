<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<h2 class="mt-3">날짜,시간 링크</h2>
	
	<form method="get" action="/jsp/test/test03.jsp">
		<div>
		<a href="/jsp/test/test03.jsp?link=time" class="btn btn-primary mt-3">현재 시간 확인</a>
		<a href="/jsp/test/test03.jsp?link=date" class="btn btn-info mt-3">현재 날짜 확인</a>
		</div>
	</form>
	</div>

</body>
</html>