<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="action" value="move_updateNick.do"/>
    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action = "${action }">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name = "id"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name = "password"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="로그인"></td>
		</tr>
	</table>
</form>
</body>
</html>