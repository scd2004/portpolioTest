<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="content-language" content="kr">
<meta name="google-site-verification"
	content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
<meta name="author" content="디시인사이드">
<meta name="title" content="디시 회원탈퇴">
<meta name="description" content="약관동의">
<title>디시 회원탈퇴</title>
<link rel="shortcut icon"
	href="//nstatic.dcinside.com/dc/w/images/logo_icon.ico" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/login.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/popup.css?190102" "/>
<script type="text/javascript"
	src="//nstatic.dcinside.com/dc/w/js/html5shiv.min.js"></script>
<script type="text/javascript" src="./js/member.js?190104"></script>
<!-- <script type="text/javascript">
function checkValue()
{
	var form = document.user;
	if(form.password_chk.value != form.password.value){
		alert("비밀번호를 동일하게 입력하세요.");
		return false;
		}
</script> -->
  
</head>
</head>
<body>
	<!--스킵 내비게이션-->
	<div class="skip">
		<a href="#pagemenu"><span>페이지메뉴 영역 바로가기</span></a> <a href="#contbox"><span>본문
				영역 바로가기</span></a>
	</div>
	<!-- //스킵 내비게이션-->
	<div id="top" class="width868 login_wrap">
		<!-- 상단 -->
		<header class="dcheader bg">
			<div class="dchead">
				<!-- 로고영역 -->
				<h1 class="dc_logo">
					<a href="https://www.dcinside.com/"> <img
						src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png"
						alt="디시인사이드">
					</a>
				</h1>
				<!-- //로고영역 -->
				<div class="area_links">
					<ul>
						<li><a href="https://gall.dcinside.com">갤러리</a></li>
						<li><a href="https://gall.dcinside.com/m">m.갤러리</a></li>
						<li><a href="https://gallog.dcinside.com">갤로그</a></li>
						<li><a href="https://dcnewsj.joins.com">뉴스</a></li>
						<li><a href="https://event.dcinside.com">이벤트</a></li>
						<li><a href="https://mall.dcinside.com">만두몰</a></li>
					</ul>
				</div>
			</div>
		</header>
		<main id="container">
		<div class="content member_out">
			<form:form method="post" action="move_deleteUser.do"
				commandName="user" ><!-- onsubmit="return checkValue()" -->
				<form:hidden path="id"/>
				<!-- 이부분 암호화 가능한지!!!!!!!!!!!! -->
				<form:hidden path="password"/>
				<article>
					<h2 class="blind">회원 탈퇴</h2>
					<section id="pagemenu">
						<h2 class="blind">페이지 메뉴</h2>
						<ul class="page_menu three clear">
							<li><a
								href="./member_modify.php?token=79ed817fb28b60863fee80fb45836a6c6550b543d8"
								class="pmenu">개인 정보 변경</a></li>
							<li><a
								href="./pw_modify.php?token=79ed817fb28b60863fee80fb45836a6c6550b543d8"
								class="pmenu">비밀번호 변경</a></li>
							<li><a
								href="./member_out_pw_chk.php?token=79ed817fb28b60863fee80fb45836a6c6550b543d8"
								class="pmenu on">회원 탈퇴</a></li>
						</ul>
					</section>


					<section>
						<div class="cont_head">
							<h3 class="head_tit">회원 탈퇴</h3>
						</div>
						<div id="contbox" class="con_box brd">
							<!-- 정보 입력 -->
							<div class="con center">
								<strong class="tit">개인 정보 보호를 위해 비밀번호를 입력해주세요</strong>
								<div class="form_box">
									<input type="password" class="int" title="비밀번호 입력"
										placeholder="비밀번호" id="password_chk" name="passwordConfirm">
									<input type="submit" class="btn_blue small btn_wrfull"
										id="out_pwChk" value="확인">
									<form name="outForm" id="outForm" method="post">
										<input type="hidden" id="token" name="token">
									</form>
								</div>
							</div>
							<!-- //정보 입력 -->
						</div>
					</section>
				</article>
			</form:form>
		</div>
		</main>
		<footer class="dcfoot">
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

