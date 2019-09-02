<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="content-language" content="kr">
  <meta name="google-site-verification" content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
  <meta name="author" content="디시인사이드">
  <meta name="title" content="디시 회원탈퇴">
  <meta name="description" content="약관동의">
  <title>디시 회원탈퇴</title>
  <link rel="shortcut icon" href="//nstatic.dcinside.com/dc/w/images/logo_icon.ico"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/login.css"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/common.css"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/popup.css?190102""/>
  <script type="text/javascript" src="//nstatic.dcinside.com/dc/w/js/html5shiv.min.js"></script>
  <script type="text/javascript" src="./js/member.js?190104"></script>
  <!--[if IE 7]>
    <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/ie7.css"/>
  <![endif]-->
</head>
 <script type="text/javascript">
 function goBack() {
	    window.history.back();
	}
 function CheckForm(Join){
	 var chk1=document.check_Agree.term_agree.checked;
	 if(!chk1){
         alert('동의해 주세요');
         return false;
     }
 }


	 	 


</script>
</head>
<body>
  <!--스킵 내비게이션-->
  <div class="skip">
    <a href="#pagemenu"><span>페이지메뉴 영역 바로가기</span></a>
    <a href="#contbox"><span>본문 영역 바로가기</span></a>
  </div>
  <!-- //스킵 내비게이션-->
  <div id="top" class="width868 login_wrap">
    <!-- 상단 -->
    <header class="dcheader bg">
      <div class="dchead">
        <!-- 로고영역 -->
        <h1 class="dc_logo">
          <a href="https://www.dcinside.com/">
            <img src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png" alt="디시인사이드">
          </a>
        </h1>
        <!-- //로고영역 -->
        <div class="area_links">
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
    <main id="container">
      <div class="content member_out">
        <article>
          <h2 class="blind">회원 탈퇴</h2>
          <section id="pagemenu">
            <h2 class="blind">페이지 메뉴</h2>
            <ul class="page_menu three clear">
              <li><a href="./member_modify.php?token=79ed817fb28b60863fee80fb45836a6c6550b543d848de16a6" class="pmenu">개인 정보 변경</a></li>
              <li><a href="./pw_modify.php?token=79ed817fb28b60863fee80fb45836a6c6550b543d848de16a6" class="pmenu">비밀번호 변경</a></li>
              <li><a href="./member_out_pw_chk.php?token=79ed817fb28b60863fee80fb45836a6c6550b543d848de16a6" class="pmenu on">회원 탈퇴</a></li>
            </ul>
          </section>
          <!-- 체크박스 체크 안되면 탈퇴버튼 비활성화 -->
          <form:form method="post" action="deleteUser.do" commandName="user" onsubmit="return CheckForm(Join)">
          <form:hidden path="id"/>
          <section>
            <div class="cont_head">
              <h3 class="head_tit">회원 탈퇴</h3>
            </div>
              <!-- 회원탈퇴 사유 입력 -->
              <div id="contbox" class="con_box brd">
                  <div class="con innerbox">
                    <h4 class="tit font_red"><em class="dotred" style="margin-right:4px"></em>디시인사이드 회원 탈퇴를 하시면, 아이디와 개인 정보는 즉시 삭제되고 복구가 불가능합니다.</h4>
                    <div class="info_txt">
                      <p style="margin-left:-9px"><em class="dotred"></em><b class="tit font_red ">회원 탈퇴 시 회원 아이디로 작성된 게시물과 댓글은 자동으로 삭제되지 않습니다.</b></p>
                      <p><em class="tip_deco_dot"></em>회원님이 보유 중인 만두는 <b class="font_red">[ ${user.coin } 개]</b>입니다. 탈퇴 후 만두는 자동 소멸됩니다.</p>
                      <p><em class="tip_deco_dot"></em>탈퇴 처리된 아이디는 재사용이 불가능합니다.</p>
                      <p><em class="tip_deco_dot"></em>회원 탈퇴 후 7일 이내에는 인증받은 동일 이메일로는 회원 가입이 제한됩니다.</p>
                                          </div>
                    <div class="bg_box">
                      <div class="info">
                        <div class="form_group id">
                          <div class="form_tit">아이디</div>
                          <div class="form_txt">
                            <b>${user.id }( ${user.name } )</b>
                            <a href="http://gallog.dcinside.com/dbduddl0928" target="_blank" class="btn_blue smallest btn_gallog_go">갤로그 확인하기</a>
                          </div>
                        </div>
                        <div class="form_group">
                          <div class="form_tit">닉네임</div>
                          <div class="form_txt">
                            <p>${user.nick }</p>
                          </div>
                        </div>
                        <div class="form_group">
                          <div class="form_tit">이메일</div>
                          <div class="form_txt">
                             <p>${user.mail }@${user.mail01 }</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- //회원탈퇴 사유 입력 -->
                  <div class="bye_box">
                    <img src="https://nstatic.dcinside.com/dc/w/images/bye_img.png" alt="그동안 함께 할 수 있어서 행복했습니다. 디시인사이드는 항상 같은 자리에서 기다리고 있겠습니다.감사합니다.">
                  </div>
              </div>
              <form id="memberOut_frm" name="memberOut_frm" method="post">
    				  <input type="hidden" name="is_delete" value="1">
    				  <input type="hidden" name="token" id="token" value="79ed817fb28b60863fee80fb45836a6c6550b543d848de16a6">
    		  </form>
    		  <form name="check_Agree">
            <div class="check_inner">
		<span class="checkbox">
		  <input type="checkbox" id="term_agree">
		  <em class="checkmark"></em>
		  <label for="term_agree">위 내용을 확인하였습니다.</label>
		</span>
	  </div>
	  </form>
            <div class="btn_box clear">
              <div class="fr">
                <button type="submit" class="btn_blue member_out_btn" id="btn_memberOut">탈퇴</button>
                <button type="button" class="btn_grey member_out_btn" onclick="goBack()">취소</button>
              </div>
            </div>
          </section>
          </form:form>
        </article>
      </div>
    </main>
		    <footer class="dcfoot">
     <div class="info_policy">
       <a href="https://www.dcinside.com/company">회사소개</a>
       <a href="https://www.dcinside.com/company#recruit">인재채용</a>
       <a href="https://www.dcinside.com/company#alliance">제휴안내</a>
       <a href="https://nstatic.dcinside.com/dc/dcad/w/index.html">광고안내</a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/policy_index.html">이용약관</a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/privacy_index.html"><b>개인정보처리방침</b></a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/youth_policy.html">청소년보호정책</a>
     </div>
     <div class="copyright">Copyright ⓒ 1999 - 2019 dcinside. All rights reserved</div>
    </footer>
  </div>
</body>
</html>