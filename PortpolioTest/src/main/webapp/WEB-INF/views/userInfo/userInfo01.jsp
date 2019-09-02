<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="action" value="update_userNick.do" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="top">
		<!-- 상단 -->
		<header>
			<div>
				<!-- 로고영역 -->
				<h1 class="dc_logo">
					<a href="https://www.dcinside.com/"> <img
						src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png"
						alt="디시인사이드">
					</a>
				</h1>
				<!-- //로고영역 -->
				<div>
					<ul>
						<li><a href="http://gall.dcinside.com">갤러리</a></li>
						<li><a href="http://gall.dcinside.com/m">m.갤러리</a></li>
						<li><a href="http://gallog.dcinside.com">갤로그</a></li>
						<li><a href="http://dcnewsj.joins.com">뉴스</a></li>
						<li><a href="http://event.dcinside.com">이벤트</a></li>
						<li><a href="http://mall.dcinside.com">만두몰</a></li>
					</ul>
				</div>
			</div>
		</header>
		<main>
		<div>
			<article>
				<section id="pagemenu">
					<ul class="page_menu three clear">
						<li><a href="userInfo01.do?id=${user.id }">개인 정보 변경</a></li>
						<li><a href="move_updatePassword.do?id=${user.id }">비밀번호 변경</a></li>
						<li><a href="predelete_userInfo.do?id=${user.id }">회원 탈퇴</a></li>
					</ul>
				</section>
				<section>
					<div>
						<h3>기본 정보 변경</h3>
					</div>
					<div>
						<div>
							<form:form id="modifyForm1" name="submitForm1" method="post"
								action="${action }" commandName="user">
								<fieldset>
									<input type="hidden" id="age_type" name="age_type"
										value="general"> <input type="hidden" id="gubunDate"
										name="gubunDate" value="2005-08-27">
									<div>
										<div>아이디</div>
										<div>
											<input type="text" name = "id" title="아이디" value="${user.id }" readonly>
										</div>
									</div>
									<div>
										<div>닉네임</div>
										<div>
											<div>
												<input type="text" title="닉네임 입력" maxlength="20" name="nick"
													id="nick" value="${user.nick }"
													placeholder="사용할 닉네임을 입력해 주세요">
												<div>
													<select name="fixnic" id="fixnic" name="fixnic">
														<!--onchange="nicktype_change();" -->
														<option value="1" selected>비고정닉</option>
														<option value="0">고정닉</option>
													</select>
												</div>
											</div>
											<div class="tip_msgbox">
												<p class="tip_msg" id="nick_info">2~20자 닉네임을
													입력해주세요.(띄어쓰기는 할 수 없습니다.)</p>
												<p class="tip_msg ok" id="nick_able" style="display: none">O
													사용 가능한 닉네임 입니다.</p>
												<p class="tip_msg error" id="nick_unable"
													style="display: none;">X 사용할 수 없는 닉네임 입니다.</p>
											</div>
										</div>
									</div>
									<div>
										<div>이름</div>
										<div>
											<input type="text" title="이름" id="name" name="name"
												value="${user.name }" readonly>
										</div>
									</div>
									<div>
										<div>가입 인증 이메일</div>
										<div>
											<input type="text" title="이메일" value="${user.mail }"
												id="mail" readonly> <span>@</span> <input
												type="text" title="이메일 주소" value="${user.mail01 }"
												id="mail01" readonly>
											<a href = "move_updateEmail.do?id=${user.id }"> 인증 이메일 변경</a>
										</div>
									</div>
								</fieldset>
								<div>
									<div>
										<input type="submit" id="modify_info" value="확인" />
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</section>

			</article>
		</div>
		</main>
		<footer>
			<div class="info_policy">
				<a href="https://www.dcinside.com/company">회사소개</a> <a
					href="https://www.dcinside.com/company#recruit">인재채용</a> <a
					href="https://www.dcinside.com/company#alliance">제휴안내</a> <a
					href="https://nstatic.dcinside.com/dc/dcad/w/index.html">광고안내</a> <a
					href="https://nstatic.dcinside.com/dc/w/policy/policy_index.html">이용약관</a>
				<a
					href="https://nstatic.dcinside.com/dc/w/policy/privacy_index.html"><b>개인정보처리방침</b></a>
				<a href="https://nstatic.dcinside.com/dc/w/policy/youth_policy.html">청소년보호정책</a>
			</div>
			<div class="copyright">Copyright ⓒ 1999 - 2019 dcinside. All
				rights reserved</div>
		</footer>
	</div>
</body>
</html>