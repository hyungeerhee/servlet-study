<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>길이 변환</h3>
	<form method="post" action="/jsp/test/test05.jsp">
		<input type="text" name="length">cm<br>
		<label>인치<input type="checkbox" name="measure" value="in"></label>
		<label>야드<input type="checkbox" name="measure" value="yd"></label>
		<label>피트<input type="checkbox" name="measure" value="ft"></label>
		<label>미터<input type="checkbox" name="measure" value="m"></label>
		
		<button type="submit">변환</button>
	</form>

</body>
</html>