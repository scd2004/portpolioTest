<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
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
			<td>회원 분류 선택</td>
		</tr>
		<tr>
			<td><hr></td>
		</tr>
		<tr>
			<td>일반 회원 (만 14세 이상)<input type="radio" name="minorWhether"
				value="adult"></td>
			<td>어린이 회원 (만 14세 미만)<input type="radio" name="minorWhether"
				value="minor"></td>
		</tr>
	</table>
	<!-- 약관내용이랑 개인정보 처리방침은 추후 삽입 -->
	<table>
		<tr>
			<td>약관 동의</td>
		</tr>
		<tr>
			<td><hr></td>
		</tr>
		<tr>
			<td>서비스 이용약관</td>
			<br>
			<td><textarea rows="300" cols="200">여기에 서비스 이용약관 들어감</textarea></td>
			<br>
			<td><input type="checkbox" name="serviceAgree" value="agree">
				내용을 확인 하였으며, 동의 합니다.</td>
		</tr>
		<tr>
			<td><hr></td>
		</tr>
		<tr>
			<td>개인정보처리방침</td>
			<br>
			<td><textarea rows="300" cols="200">여기에 개인정보 처리방침 들어감</textarea></td>
			<br>
			<td><input type="checkbox" name="serviceAgree" value="agree">
				내용을 확인 하였으며, 동의 합니다.</td>
		</tr>
		<tr>
			<td><input type="submit" value="다음"></td>
		</tr>
	</table>

</body>
</html>