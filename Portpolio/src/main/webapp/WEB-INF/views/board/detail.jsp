<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="../resources/css/board.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="../resources/js/reply.js"></script>
	<script type="text/javascript" src="../resources/js/attach.js"></script>
</head>
<body>

<form action="/board/detail" method="POST">
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
					<!-- input name속성 활용해서 삭제 기능 구현 -->
					<input type="hidden" name="bod_CONTENT" value="${detail.bod_CONTENT}">
					${detail.bod_TITLE}
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>${detail.bod_NO}
                        	<input type="hidden" name="bod_NO" value="${detail.bod_NO}">
                        </dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>${detail.bod_ID}
                        	<input type="hidden" name="bod_ID" value="${detail.bod_ID}">
                        </dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>${detail.bod_REGDATE}
                        	<input type="hidden" name="bod_REGDATE" value="${detail.bod_REGDATE}">
                        </dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>${detail.bod_CNT}
                        	<input type="hidden" name="bod_CNT" value="${detail.bod_CNT}">
                        </dd>
                    </dl>
                </div>
                <div class="cont">
					<input type="hidden" name="bod_CONTENT" value="${detail.bod_CONTENT}">${detail.bod_CONTENT}
				</div>
            </div>
            <div class="bt_wrap">
                <a href="/board/list" class="on">목록</a>
                <a href="/board/edit?bod_NO=${detail.bod_NO}">수정</a>
                <a><button>삭제</button></a>
            </div>
        </div>
    </div>
</form>   
<!-- 댓글 부분 -->
<div id="board_reply">
	<div id="uploadResult">
		<ul>
			
		</ul>
	</div>
	
	<div><label>댓글</label></div>
	<div>
		<textarea rows="5" cols="50" id="reply"></textarea>
	</div>
	<div>	
		<input type="button" value="댓글쓰기" id="add">
	</div>
	<div id="chat">
		<ul id="replyUL">
		</ul>
	</div>
	<div id="replyPage"></div> 
</div>	

</body>
</html>