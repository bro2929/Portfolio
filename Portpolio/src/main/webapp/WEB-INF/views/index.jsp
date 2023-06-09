<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<!-- c:if 액션태그로 -->

<!--
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
--> 
<html>
	<head>
		<title>장희영의 포트폴리오</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="resources/css/main.css" />
		<noscript><link rel="stylesheet" href="resources/css/noscript.css" /></noscript>
		<script src="https://kit.fontawesome.com/0f537ad086.js" crossorigin="anonymous"></script>
		<style>
		    @keyframes fadeInUp {
		        0% {
		            opacity: 0;
		            transform: translate3d(0, 100%, 0);
		        }
		        to {
		            opacity: 1;
		            transform: translateZ(0);
		        }
		    }
		 
		    #icon_heart {
		        position: relative;
		        animation: fadeInUp 1s;
		    }
	</style>
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
											<!-- 로그인X (session이 null값) -->
											<c:if test="${login == null}">
												<li><a href="/signInUp">Sign In/Up</a></li>
											</c:if>
											<!-- 로그인O (session이 null값이 아님) -->
											<c:if test="${login != null}">
												<li><a href="/logOut" onclick="logOut()">Sign Out</a></li>
											</c:if>
											<li><a href="/board/list">게시판</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>

				<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>portfolio</h2>
							<p>안녕하세요, 웹 개발자 장희영입니다.<br />
							Welcome to my portfolio page!<br />
							<a href="http://html5up.net">스카우트 문의 환영♡</a></p>
							<ul class="actions special" onclick="iconShow(true)">
								<li><a href="#" class="button primary">♡ +999<input type="hidden" name="" value=""></a></li>
							</ul>
							<img src="resources/image/heart.png" id="icon_heart" style="display:none;"/>
						</div>
						<a href="#one" class="more scrolly">Learn More</a>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style1 special">
						<div class="inner">
							<header class="major">
								<h2>About Me</h2>
								<p>장점이나 특기<br />
								간단하게 두줄</p>
							</header>
							
							<div class="container1">
								<div class="items1">
									<div><i class="fas fa-regular fa-id-card-clip"></i></div>
									<div>
									<div>이름</div>
									<div class="value">장희영</div>
									</div>
								</div>
								<div class="items1">
									<div><i class="fas fa-regular fa-cake-candles"></i></div>
									<div>
									<div>생년월일</div>
									<div class="value">1998.02.09</div>
									</div>
								</div>
								<div class="items1">
									<div><i class="fas fa-solid fa-location-dot"></i></div>
									<div>
									<div>주소지</div>
									<div class="value">울산광역시 중구</div>
									</div>
								</div>
								<div class="items1">
									<div><i class="fas fa-solid fa-phone"></i></div>
									<div>
									<div>연락처</div>
									<div class="value">010.9330.3413</div>
									</div>
								</div>
								<div class="items1">
								<div><i class="fas fa-regular fa-paper-plane"></i></div>
									<div>
									<div>이메일</div>
									<div class="value">bro2929@naver.com</div>
									</div>
								</div>
								<div class="items1">
								<div><i class="fas fa-solid fa-pencil"></i></div>
									<div>
									<div>학력</div>
									<div class="value">경성대학교 법학 전공</div>
									</div>
								</div>	
							</div>	
							<ul class="icons major">
								<li><span class="icon fa-gem major style1"><span class="label">Lorem</span></span></li>
								<li><span class="icon fa-heart major style2"><span class="label">Ipsum</span></span></li>
								<li><span class="icon solid fa-code major style3"><span class="label">Dolor</span></span></li>
							</ul>
						</div>
					</section>		

				<!-- Two -->
					<section id="two" class="wrapper alt style2">
						<section id="projects">
							<header class="major">
								<h2>Projects</h2>
							</header>
						</section>	
						<section class="spotlight">
							<div class="image"><img src="resources/image/pic01.jpg" alt="" /></div><div class="content">
								<h2>가장 최근 프로젝트명1<br />
								project name</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
							</div>
						</section>
						<section class="spotlight">
							<div class="image"><img src="resources/image/pic02.jpg" alt="" /></div><div class="content">
								<h2>프로젝트명2<br />
								project name</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
							</div>
						</section>
						<section class="spotlight">
							<div class="image"><img src="resources/image/pic03.jpg" alt="" /></div><div class="content">
								<h2>프로젝트명3<br />
								project name</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
							</div>
						</section>
						<section class="spotlight">
							<div class="image"><img src="resources/image/pic02.jpg" alt="" /></div><div class="content">
								<h2>프로젝트명4<br />
								project name</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
							</div>
						</section>		
						<section class="spotlight">
							<div class="image"><img src="resources/image/pic03.jpg" alt="" /></div><div class="content">
								<h2>프로젝트명5<br />
								project name</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
							</div>
						</section>										
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style3 special">
						<div class="inner">
							<header class="major">
								<h2>Skills</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec amet imperdiet eleifend<br />
								fringilla tincidunt. Nullam dui leo Aenean mi ligula, rhoncus ullamcorper.</p>
							</header>
							<ul class="features">
								<li class="icon fa-paper-plane">
									<h3>Arcu accumsan</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon solid fa-laptop">
									<h3>Ac Augue Eget</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon solid fa-code">
									<h3>Mus Scelerisque</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon solid fa-headphones-alt">
									<h3>Mauris Imperdiet</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon fa-heart">
									<h3>Aenean Primis</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon fa-flag">
									<h3>Tortor Ut</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
							</ul>
						</div>
					</section>

				<!-- CTA -->
					<section id="cta" class="wrapper style4">
						<div class="inner">
							<header>
								<h2>Arcue ut vel commodo</h2>
								<p>Aliquam ut ex ut augue consectetur interdum endrerit imperdiet amet eleifend fringilla.</p>
							</header>
							<ul class="actions stacked">
								<li><a href="#" class="button fit primary">Activate</a></li>
								<li><a href="#" class="button fit">Learn More</a></li>
							</ul>
						</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.scrollex.min.js"></script>
			<script src="resources/js/jquery.scrolly.min.js"></script>
			<script src="resources/js/browser.min.js"></script>
			<script src="resources/js/breakpoints.min.js"></script>
			<script src="resources/js/util.js"></script>
			<script src="resources/js/main.js"></script>
			
			<script>
				function logOut(){
				    alert("로그아웃 되었습니다.");
				}
				function iconShow(a){
					const img1 = document.getElementById('icon_heart');
					if(a){
						img1.style.display = 'block';
					}
					img1.style.display = 'none';
				}
			</script>
			
	</body>
</html>