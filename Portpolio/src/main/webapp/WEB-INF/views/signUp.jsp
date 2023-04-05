<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
	<link rel="stylesheet" href="resources/css/header.css" />
	<link rel="stylesheet" href="resources/css/signUp.css" />
	<!-- <script src="resources/js/validation.js" /></script > -->
</head>

<body class="landing is-preload">
<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
			<header id="header" class="alt">
				<h1><a href="/">Spectral</a></h1>
				<nav id="nav">
					<ul>
						<li class="special">
							<a href="#menu" class="menuToggle"><span>Menu</span></a>
							<div id="menu">
								<ul>
									<li><a href="/">Home</a></li>
									<li><a href="/1">Generic</a></li>
									<li><a href="/2">Elements</a></li>
									<li><a href="/signup">Sign Up</a></li>
									<li><a href="/login">Log In</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</nav>
			</header>
	</div>
	
<h3>회원 신청서</h3>
<form action="/signup" method="POST">
	<label>아이디*</label> <input type="text" id="id" name="id1" onblur="ID()"> <button>중복확인</button>
		<span id="idcheck"></span><br>
	<label>비밀번호*</label> <input type="password" id="pw" name="password1" placeholder="영문자+숫자+특수문자 조합" onblur="PW()">
		<span id="pwcheck"></span><br>
	<label>비밀번호 재확인*</label> <input type="password" id="pw1" onchange="PW1()">
		<span id="pw1check"></span><br>
	<label>이름*</label> <input type="text" id="name" name="name1" onchange="NAME()"><br>
	<!--주소: <input type="text" id="addr" placeholder=""><br>-->
	<label>생년월일*</label> <input type="text" id="year" name="birth1" placeholder="ex) 20230101">
		<span></span><br>
	<label>성별*</label> <input type="radio" name="gender1" value="f">여
	<input type="radio" name="gender1" value="m">남
	<input type="radio" name="gender1" value="no">선택 안함<br>
	<label>이메일*</label> <input type="email" id="email" name="email1">@
	<select name="">
	<option>직접입력</option>
	<option value="@naver.com">naver.com</option>
	<option value="@kakao.com">kakao.com</option>
	<option value="@gmail.com">gmail.com</option>
	</select><br>
	<label>전화번호*</label> <input type="text" id="phone" name="phone1" onblur="PHONE()"> ex) "-"없이 숫자만 입력
		<span id="phonecheck"></span><br>	
	<br>
	<br>
	약관동의
 		<input type="checkbox" name="agree" value="2">
 		약관에 동의합니다.
	<br>
	<br>
	<div>
	<input type="reset" id="reset" value="이전페이지로">
	<input type="submit" id="submit" value="가입하기">
	</div>
</form>
	
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.scrollex.min.js"></script>
			<script src="resources/js/jquery.scrolly.min.js"></script>
			<script src="resources/js/browser.min.js"></script>
			<script src="resources/js/breakpoints.min.js"></script>
			<script src="resources/js/util.js"></script>
			<script src="resources/js/main.js"></script>
</body>
</html>