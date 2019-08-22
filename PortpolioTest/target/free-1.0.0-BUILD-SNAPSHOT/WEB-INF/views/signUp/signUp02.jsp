<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>약관동의</td>
			<td>기본 정보 입력</td>
			<td>가입 인증</td>
			<td>가입 완료</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>기본 정보 입력</td>
		</tr>
		<tr>
			<td><hr></td>
		</tr>
		</tr>
	</table>
	<form:form method="POST" commandName="user">
		<table>
			<tr>
				<td><form:label path="id">아이디 입력</form:label></td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="nick">nick</form:label></td>
				<td><form:input path="nick" /></td>
				<td><select name="fixnic">
						<option value="0">비고정닉</option>
						<option value="1">고정닉</option>
				</select></td>
			</tr>
			<tr>
				<td><form:label path="password">비밀번호 입력</form:label></td>
				<td><form:label path="passwordconfirm"></form:label></td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td><form:label path="name">name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="email">가입인증 이메일</form:label></td>
				<td><form:input path="email01" /></td>
				<td>@</td>
				<td>
					<!-- 이거 되면 나머지 이메일 주소도 추가할것 --> <select name="email02">
						<option value="email02">gmail.com</option>
				</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="다음" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>