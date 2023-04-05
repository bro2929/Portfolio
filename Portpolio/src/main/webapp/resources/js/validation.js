/**
 * 
 */

	function ID(){
		var elem = document.getElementById("id");
		var exp = /^(?=.*[a-zA-z])(?=.*[0-9]).{5,20}/;
		if (elem.value.match(exp)){
		document.getElementById("idcheck").innerHTML = "";
		return true;
		}
		else{
		document.getElementById("idcheck").innerHTML = "아이디는 영문+숫자 5~20자로 입력해주세요.";
		elem.focus();
		document.getElementById("id").value = null;
		return;
		}
	}
    function PW(){
		var elem = document.getElementById("pw");
		var exp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,25}$/;
		if (elem.value.match(exp)){
		document.getElementById("pwcheck").innerHTML = "";
		return true;
		}
		else{
		document.getElementById("pwcheck").innerHTML = "비밀번호는 영문+숫자+특수문자 8~25자로 입력해주세요.";
		elem.focus();
		document.getElementById("pw").value = null;
		return false;
		}
	}
    function PW1(){
		var elem = document.getElementById("pw1");
		var exp = document.getElementById("pw");
		if (elem.value == exp.value){
		document.getElementById("pw1check").innerHTML = "";
		return true;
		}
		else{
		document.getElementById("pw1check").innerHTML = "비밀번호가 일치하지 않습니다."
		elem.focus();
		document.getElementById("pw1").value = null;
		return false;
		}
	}

    function PHONE(){
		var elem = document.getElementById("phone");
		var exp = /^(01[016789]{1})[0-9]{3,4}[0-9]{4}$/;
		if (elem.value.match(exp)){
		document.getElementById("phonecheck").innerHTML = "";
		return true;
		}
		else{
		document.getElementById("phonecheck").innerHTML = "휴대폰번호를 올바르게 입력하세요.";
		elem.focus();
		document.getElementById("phone").value = null;
		return false;
		}
	}

