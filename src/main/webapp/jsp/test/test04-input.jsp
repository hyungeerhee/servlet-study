<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사칙 연산</h2>
 	<form method="post" action="/jsp/test/test04.jsp">
 		<input type="text" name="num1">
 		<select name="operator">
 			<option value="+">+</option>
 			<option value="-">-</option>
 			<option value="X">X</option>
 			<option value="/">/</option>
 		</select>
 		<input type="text" name="num2">
 		<button type="submit">계산</button>
 	</form>

</body>
</html>