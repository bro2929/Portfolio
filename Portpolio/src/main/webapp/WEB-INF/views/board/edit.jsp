<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="../resources/css/board.css">
   	<script type="text/javascript" src="/resources/js/uploadAjax.js"></script>
   	<script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
</head>
<body>

<form action="/board/edit" method="POST">
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력" name="bod_TITLE" value="${detail.bod_TITLE}">
                        	<input type="hidden" value="${detail.bod_NO}" name="bod_NO">
                        </dd>
                        
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text" placeholder="글쓴이 입력" name="bod_ID" value="${bod_ID}"></dd>
                    </dl>
                    <dl>
                        <dt>비밀번호</dt>
                        <dd><input type="password" placeholder="비밀번호 입력" value=""></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력" name="bod_CONTENT" id="content_area">
${detail.bod_CONTENT}
					</textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a class="on"><button>수정</button></a>
                <a href="/board/detail?bod_NO=${detail.bod_NO}">취소</a>
            </div>
        </div>
    </div>
</form>    
</body>

<script type="text/javascript">
	ClassicEditor
	.create(document.querySelector('#content_area'))
	.catch(error=>{
		console.error(error);
	}); 
</script>

</html>