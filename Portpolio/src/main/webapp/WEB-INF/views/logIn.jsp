<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="resources/css/header.css" />
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
<form action="/login" method="POST">
	<label>ID</label>
	<input type="text" name="id1">
	<label>PASSWORD</label>
	<input type="password" name="password1">
	<input type="submit" value="로그인">
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