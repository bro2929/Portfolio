/**
 *  댓글 관련 javascript 처리
 */

$(document).ready(function(){	// jquery 준비...
	// 함수 호출
	// detail.jsp가 시작되자마자 bod_NO값을 가져올려면 $(document).ready 아래에 선언
	var bnoValue=$("input[name='bod_NO']").val();
	var pageValue=1;
	// detail.jsp가 시작되자마자 댓글목록리스트(list) 함수를 호출
	list({bod_NO:bnoValue, page:pageValue});	// {변수명(=필드명):땡겨올 값}
	
	// 댓글 쓰기버튼을 클릭하면 
	$("#add").on("click",function(){
		// 댓글쓰기 버튼을 클릭했을 당시에 댓글내용을 가져올려면 $("#add").on("click",function(){ 아래에 선언
		var replyValue=$("#reply").val();
		var idValue="abcd1";
		// 댓글쓰기를 하기 위한 함수 호출
		add({bod_NO:bnoValue, rep_CONTENT:replyValue, mem_ID:idValue});//게시판 번호,내용,작성자를 reply에 저장
	})
	// 댓글 수정버튼을 클릭하면
	// 이미 존재하는 태그에 이벤트를 처리하고
	// 나중에 동적으로 생기는 태그들에 대해서 파라미터 형식으로 지정(이벤트 델리게이트)
	$("#chat").on("click",".update",function(){
		// 댓글번호와 댓글내용을 수집해서 
		var rno=$(this).data("rno");// <input>의 data-rno 속성 값 불러오기
		var reply=$("#replycontent"+rno).val();
		
		
		// 댓글수정를 하기 위한 함수 호출(댓글번호, 댓글내용)
		modify({rep_NO:rno, rep_CONTENT:reply});
	})
	
	// 댓글 삭제버튼을 클릭하면
	$("#chat").on("click",".remove",function(){
		// 댓글번호을 수집해서
		var rno=$(this).data("rno");
		//alert(bnoValue)
		// 댓글삭제를 하기 위한 함수 호출(댓글번호)
		remove({rep_NO:rno, bod_NO:bnoValue})
		//remove(rno)
		
	})
	
	// 페이지 숫자를 클릭하면
	$("#replyPage").on("click","li a",function(e){
		alert("aaa")
		e.preventDefault();
		var bnoValue=$("input[name='bod_NO']").val();
		var pageValue = $(this).attr("href");
		console.log(bnoValue)
		console.log(pageValue)
		list({bod_NO:bnoValue, page:pageValue});
	})


})	// jquery 끝... 제이쿼리 안에서 사용한 변수명과는 별개임(bno,rno,reply...)
// 함수 선언
// 댓글 삭제를 하기 위한 함수 선언
function remove(reply){
	console.log(reply);
	$.ajax({// $.ajax: 비동기식으로 처리하겠다
		type:"delete",
		url:"/replies/remove/",
		data:JSON.stringify(reply),
		contentType:"application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				alert("댓글삭제 성공");
				list(reply.bod_NO);
				location.reload();
			}
		}
	})
}


// 댓글 수정을 하기 위한 함수 선언
function modify(reply){
	console.log(reply);
	$.ajax({							
		type:"put",						// method방식(get, post, put, delete)
		url:"/replies/modify",			
		data:JSON.stringify(reply),		
		// contentType : ajax -> controller로 데이터 전송 시 타입
		// (contentType을 생략하면 web Brower한테 위임)
		contentType:"application/json; charset=utf-8",
		success:function(result){		
			if(result=="success"){
				alert("댓글수정 성공");
				location.reload();
			}
		}
	})
}
//list함수 선언 시작
function list(param){	// param={bod_NO:bnoValue, page:pageValue}
	//alert(bno);
	var bod_NO = param.bod_NO;
	var page = param.page;
	
	console.log(bod_NO)
	console.log(page)
	
	$.getJSON("/replies/"+bod_NO+"/"+page+".json",function(data){
		console.log(data);
		
		var str="";
		
		for(var i=0;i<data.list.length;i++){
			str+="<li>"+data.list[i].mem_ID+"</li>"
			str+="<li><textarea id='replycontent"+data.list[i].rep_NO+"'>"+data.list[i].rep_CONTENT+"</textarea></li>"
			str+="<li>"
			str+="<input class='update' type='button' value='수정' data-rno="+data.list[i].rep_NO+">"	//data-이름="값" 속성사용 -> $(this).data(이름)으로 해당 값을 불러올 수 있음
			str+="<input class='remove' type='button' value='삭제' data-rno="+data.list[i].rep_NO+">"
			str+="</li>"
		}
		
		$("#replyUL").html(str);
		
		showReplyPage(data.replycnt,page);
	});
}// list함수 선언 끝

// 페이징 처리
//var pageNum = 1;
function showReplyPage(replycnt,pageNum){
	
	var endNum = Math.ceil(pageNum/10.0)*10;
	var startNum = endNum-9
	
	var prev=startNum !=1;
	var next=false;
	
	if(endNum * 10 >= replycnt){
		endNum = Math.ceil(replycnt/10.0)
	}
	if(endNum * 10 < replycnt){
		next=true;
	}
	console.log(pageNum)
	console.log(startNum)
	console.log(endNum)
	var str="<ul>";
	
	if(prev){
		str+="<li><a href='"+(startNum-1)+"'>Previous</a></li>";
	}
	
	for(var i=startNum ; i<=endNum ; i++){
		str+="<li><a href='"+i+"'>"+i+"</a></li>"
	}
	
	if(next){
		str+="<li><a href='"+(endNum+1)+"'>Next</a></li>";
	}
	str+="</ul><div>"
	console.log(str);
	$("#replyPage").html(str);
	
}

// 댓글 쓰기를 하기 위한 함수 선언
function add(reply){	// add함수 선언 시작
	console.log(reply);	// reply에 저장(VO역할) -> 이후 Controller에 전달	// reply={bod_NO:bnoValue, rep_CONTENT:replyValue, mem_ID:idValue}
	$.ajax({						// $.ajax: 비동기식으로 처리하겠다
		type:"post",				// method방식(get, post, put, delete)
		url:"/replies/new",			// action="서버주소"와 같음
		data:JSON.stringify(reply),	// BoardVO 역할(데이터 그릇)
		// contentType : ajax -> controller로 데이터 전송 시 타입
		// (contentType을 생략하면 web Brower한테 위임)
		contentType:"application/json; charset=utf-8",
		success:function(result){		// insert 결과와 통신 상태를 함께 리턴
			if(result=="success"){
				alert("댓글쓰기 성공");
				list(reply.bod_NO);
				location.reload();
			}
		}
	})
}	// add함수 선언 끝