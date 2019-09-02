<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function checkValue()
	{
		var form = document.user;
		if(!form.id.value){
			alert("아이디를 입력하세요.");
			return false;
			}
		if(!form.password.value){
			alert("비밀번호를 입력하세요.");
			return false;
			}
		if(form.password.value != form.passwordcheck.value){
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
			}
		if(!form.name.value){
			alert("이름를 입력하세요.");
			return false;
			}
		if(!form.mail.value){
			alert("메일를 입력하세요.");
			return false;
			}
		}
	//취소버튼 클릭시 첫화면 으로 이동(url 수영이랑 맞출것!)
	//function goFirstForm() {
	//	location.href="메인화면.do"
	//}
	
	//id 중복체크 화면 열기
	function openIdChk(){
		window.name = "parentForm";
		window.open("signUp/IdCheckForm.jsp", "chkForm", "width=500, height=300, resizable = no, scrollbars= no");
		}

	function inputIdChk(){
		document.user.idDuplication.value = "idUnCheck";
		}
</script>


</head>
<body>
	<table align="center">
		<tr>
			<td>약관동의</td>
			<td>기본 정보 입력</td>
			<td>가입 인증</td>
			<td>가입 완료</td>
		</tr>
	</table>
	<table align="center">
		<tr>
			<td>기본 정보 입력</td>
		</tr>
		<tr>
			<td><hr></td>
		</tr>
		</tr>
	</table>
	<form:form name="user" method="POST" commandName="user" action = "add/signUp.do" onsubmit="return checkValue()">
		<table align="center">
			<tr>
				<td><form:label path="id"  >아이디 입력</form:label></td>
				<td><form:input path="id" placeholder="id를 입력하시오."/>
						<input type="button" value="중복확인" onclick="openIdChk()">
						<input type="hidden" name="idDuplication" value="idUncheck">
				</td>
			</tr>
			<tr>
				<td><form:label path="nick">nick</form:label></td>
				<td><form:input path="nick" />
						<select name="fixnic">
							<option value="0">비고정닉</option>
							<option value="1">고정닉</option>
						</select>
				</td>
			</tr>
			<tr>
				<td><form:label path="password">비밀번호 입력</form:label></td>
				<td><form:input path="password" type="password" placeholder="비밀번호를 입력하시오."/></td>
			</tr>
			<tr>
				<td><form:label path="passwordcheck">비밀번호 확인</form:label></td>
				<td><form:input path="passwordcheck" type="password" placeholder="비밀번호를 동일하게 입력하시오."/></td>
			</tr>
			<tr>
				<td><form:label path="name">name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="mail">가입인증 이메일</form:label></td>
				<td>
				<form:input path="mail" />
				@
				<select name="mail01">
								<option value='nate.com'>nate.com</option>
								<option value='empas.com'>empas.com</option>
								<option value='dreamwiz.com'>dreamwiz.com</option>
								<option value='gmail.com'>gmail.com</option>
								<option value='hanafos.com'>hanafos.com</option>
								<option value='hanmail.net'>hanmail.net</option>
								<option value='daum.net'>daum.net</option>
								<option value='hotmail.com'>hotmail.com</option>
								<option value='korea.com'>korea.com</option>
								<option value='naver.com'>naver.com</option>
								<option value='yahoo.com'>yahoo.com</option>
				</select>
				</td>
			</tr>
			<tr>
				<td colspan = "2" align="right"><input type="submit" value="다음" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>