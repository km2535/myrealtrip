<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이리얼트립 :: 로그인</title>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
  <link rel="shortcut icon" type="image/x-icon" href="${cp}/app/img/favicon.ico">
  <link rel="stylesheet" href="${cp}/css/common.css">
  <link rel="stylesheet" href="${cp}/css/pointContainer.css">
  <link rel="stylesheet" href="${cp}/css/index.css">
  <link rel="stylesheet" href="${cp}/css/footer.css">
  <link rel="stylesheet" href="${cp}/css/user/sign_in_form.css">
</head>
<body>
	<!-- header시작 -->
  	<%@ include file="/app/common/header.jsp" %>
  	<!-- header끝 -->
  	<!-- main 시작 -->
  	<form role="form" action="${cp}/user/sign_inOk.us" accept-charset="UTF-8" method="post">
	  	<input name="utf8" type="hidden" value="✓">
	  	<input type="hidden" name="authenticity_token" value="7NWPaKhilXR39qqX15XjYlJEMRGUBOQTtRfbAJ4J50hfJRUeeLmESCWddXB6Oir5KxUtvEMwhawGFPLfFIynIw==">
		  	<div class="EmailSignIn_component">
		  		<div class="EmailSignIn_container">
		  			<div class="SignInForm_container">
		  				<div class="SignInForm_row">
		  					<label class="EmailText_label" for="userEmail">
		  						<p>이메일 *</p>
		  						<div class>
		  							<input type="email" class="EmailText_input EmailText_medium" id="userEmail" name="userEmail" placeholder="ID@example.com" onfocus = "this.placeholder=''" onblur = "this.placeholder='ID@example.com'" value>
		  						</div>
		  						<span class="emailCheck hidden"></span>
		  					</label>
		  				</div>
		  				<div class="SignInForm_row">
		  					<label class="EmailText_label" for="userEmail">
		  						<p>비밀번호 *</p>
		  						<div class>
		  							<input type="password" class="EmailText_input EmailText_medium" id="userPassword" name="userPassword" placeholder="영문, 숫자, 특수문자 2가지 조합 6~15자" onfocus = "this.placeholder=''" onblur = "this.placeholder='영문, 숫자, 특수문자 2가지 조합 6~15자'"> 
		  						</div>
		  						<span class="pwCheck hidden"></span>
		  					</label>
		  				</div>
		  				<div class="SignInForm_row">
		  					<div class="UserKeepSession_container">
		  						<label class="Checkbox__label Checkbox__medium" for="keep_session">
		  							<input type="checkbox" id="keep_session" class="Checkbox__input Checkbox__medium" name="keep_session" value="true">
		  							로그인 상태 유지
		  						</label> 
		  						<a href="${cp}/user/pwSearch.us" class="UserPasswordSession_link">비밀번호 찾기</a>
		  					</div>
		  				</div>
		  				<div class="SignInForm_row">
		  					<button type="submit" class="Button__button Button__primary Button__large Button__block undefind" name ="buttons"disabled>이메일 로그인</button>
		  				</div>
		  			</div>
		  			<div class="SignInJoinLink__container">
		  				<span class="SignJoinLink__description">아직 회원이 아니신가요?</span>
		  				<a href="${cp}/user/sign_up.us" class="SignInJoinLink__link">회원가입</a>
		  			</div>
		  		</div>
		  	</div>
  	</form>
  	<!-- main 끝 -->
  	<!-- footer 시작 -->
	<div class="default-components" id="footer-components">
		<footer id="footer" class="footer-container">
  			<%@ include file="/app/common/footer.jsp" %>	
 		</footer>
	</div>
  	<!-- footer 끝 -->
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src = "${cp}/js/user.js"></script>
<script src ="${cp}/js/sign_in_form.js"></script>

</html>