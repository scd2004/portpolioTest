<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="action" value="update_userEmail.do"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" action="${action }" commandName="user">
<form:hidden path="id"/>
<div id="changeEmailLayer">
	<div>
		<div>
			<h3>가입 인증 이메일 변경하기</h3>
		</div>
		<div>
			<div>
				<p>회원가입 시 인증한 가입 인증 이메일을 변경하려면 이메일 인증을 다시 진행하셔야
					합니다.</p>
				<p>이메일 변경을 하시려면 변경하고자 하는 메일 주소를 정확하게 입력하여 주시기 바랍니다.</p>
				<p>이미 인증된 이메일 주소와 다른 이메일 주소를 입력해 주셔야 합니다.</p>
				<p>변경하는 이메일 주소는 아이디/비밀번호 찾기에도 이용되기 때문에 실제 사용하는 이메일 주소를 입력하여
					주시기 바랍니다.</p>
			</div>
			<div>
				<!-- 인증 이메일 입력 -->
				<div>
					<div>
						<input type="text" id="mail" name="mail" title="이메일" value="" onkeyup="inputMail();"> 
						<span>@</span>
							<select id="mail01" name="mail01">
                        	    <option selected="selected" value="self">이메일 선택</option>
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
								<option value='inst'>직접 입력</option>
							</select>
					</div>
				</div>
				<!-- //인증 이메일 입력 -->
			</div>
		</div>
		<div >
			<input type="submit" id="mail_change" value="다음"/>
			<!-- 가입 인증 이메일 입력 시-->
		</div>
	</div>
</div>
</form:form>
</body>
</html>