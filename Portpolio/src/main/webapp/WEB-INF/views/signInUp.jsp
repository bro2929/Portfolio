<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- 	<link rel="stylesheet" href="resources/css/header.css" /> -->
	<link rel="stylesheet" href="resources/css/login.css" />
</head>

<body class="landing is-preload">
<!-- Page Wrapper
	<div id="page-wrapper">

		Header
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
	</div>	 -->	
	
<div id="container" class="container">
    <!-- FORM SECTION -->
    <div class="row">
      <!-- SIGN UP -->
      <div class="col align-items-center flex-col sign-up">
        <div class="form-wrapper align-items-center">
          <div class="form sign-up">
          
<!-- 회원가입 폼 -->          
<form action="/signup" method="POST">          
	<div class="input-group">
		<i class='bx bxs-user'></i>
		<input type="text" name="mem_ID" placeholder="Username">
	</div>
	<div class="input-group">
		<i class='bx bxs-lock-alt'></i>
		<input type="password" name="mem_PASSWORD" placeholder="Password">
	</div>
	<div class="input-group">
		<i class='bx bxs-lock-alt'></i>
		<input type="password" placeholder="Confirm password">
	</div>
	<div class="input-group">
		<i class='bx bxs-user'></i>
		<input type="text" name="mem_NAME" placeholder="Name">
	</div>
	<div class="input-group">
		<i class='bx bxs-user'></i>
		<input type="text" name="mem_BIRTH" placeholder="Birth">
	</div>
	<div class="input-group">
		<i class='bx bxs-user'></i>
		<input type="text" placeholder="Gender">
		<input type="radio" name="mem_GENDER" value="F" style="width:auto;">여
		<input type="radio" name="mem_GENDER" value="M" style="width:auto;">남
		<input type="radio" name="mem_GENDER" value="X" style="width:auto;">선택 안함
	</div>							
	<div class="input-group">
		<i class='bx bx-mail-send'></i>
		<input type="email" id="email" name="mem_EMAIL" placeholder="Email">
		<select name="">
			<option>직접입력</option>
			<option value="@naver.com">@naver.com</option>
			<option value="@kakao.com">@kakao.com</option>
			<option value="@gmail.com">@gmail.com</option>
		</select>
	</div>
	<div class="input-group">
		<i class='bx bxs-user'></i>
		<input type="text" name="mem_PHONE" placeholder="Phone">
	</div>	
	<button>
		Sign up
	</button>
</form>        
    
            <p>
              <span>
                Already have an account?
              </span>
              <b onclick="toggle()" class="pointer">
                Sign in here
              </b>
            </p>
          </div>
        </div>
      
      </div>
      <!-- END SIGN UP -->
      <!-- SIGN IN -->
      
      <div class="col align-items-center flex-col sign-in">
        <div class="form-wrapper align-items-center">
          <div class="form sign-in">
        
<!-- 로그인 폼 -->          
<form action="/login" method="POST">        
	<div class="input-group">
		<i class='bx bxs-user'></i>
		<input type="text" name="mem_ID" placeholder="Username">
	</div>
	<div class="input-group">
		<i class='bx bxs-lock-alt'></i>
		<input type="password" name="mem_PASSWORD" placeholder="Password">
	</div>
	<button><!-- button의 디폴트는 submit임 -->
		Sign In
	</button>
</form>                 
            
            <p>
              <b>
                Forgot password?
              </b>
            </p>
            <p>
              <span>
                Don't have an account?
              </span>
              <b onclick="toggle()" class="pointer">
                Sign up here
              </b>
            </p>
          </div>
        </div>
        <div class="form-wrapper">
    
        </div>
      </div>
      <!-- END SIGN IN -->
    </div>
    <!-- END FORM SECTION -->
    <!-- CONTENT SECTION -->
    <div class="row content-row">
      <!-- SIGN IN CONTENT -->
      <div class="col align-items-center flex-col">
        <div class="text sign-in">
          <h2>
            Welcome
          </h2>
  
        </div>
        <div class="img sign-in">
    
        </div>
      </div>
      <!-- END SIGN IN CONTENT -->
      <!-- SIGN UP CONTENT -->
      <div class="col align-items-center flex-col">
        <div class="img sign-up">
        
        </div>
        <div class="text sign-up">
          <h2>
            Join with us
          </h2>
  
        </div>
      </div>
      <!-- END SIGN UP CONTENT -->
    </div>
    <!-- END CONTENT SECTION -->
</div>	
			
			
			<script src="resources/js/login.js"></script>
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.scrollex.min.js"></script>
			<script src="resources/js/jquery.scrolly.min.js"></script>
			<script src="resources/js/browser.min.js"></script>
			<script src="resources/js/breakpoints.min.js"></script>
			<script src="resources/js/util.js"></script>
			<script src="resources/js/main.js"></script>	
</body>
</html>