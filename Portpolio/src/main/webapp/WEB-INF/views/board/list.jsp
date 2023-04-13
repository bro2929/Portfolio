<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="../resources/css/board.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="/resources/js/list.js"></script>
</head>
<body>

<form action="/board/list" method="GET" id="searchForm">
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <!-- 검색 기능 -->
		<div class="board_search">    
		    <select name="type">
				<option value="T">제목</option>
				<option value="C">내용</option>
				<option value="TC">제목+게시글</option>
			</select>
			<input type="text" name="keyword" value="${paging.cri.keyword}">
			<input type="text" name="pageNum" value="${paging.cri.pageNum}">
			<input type="text" name="amount" value="${paging.cri.amount}">
			<input type="button" value="검색" name="search">
		</div>	
		
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                    <div class="count">댓글</div>
                </div>
                
                <!-- for문 시작 --><!-- 상단 코드 필요 -->
				<c:forEach items="${list}" var="boardList">
					<div>	
	                    <div class="num">${boardList.bod_NO}</div>
	                    <div class="title"><a href="/board/detail?bod_NO=${boardList.bod_NO}">${boardList.bod_TITLE}</a></div>
	                    <div class="writer">${boardList.bod_ID}</div>
	                    <div class="date">${boardList.bod_REGDATE}</div>
	                    <div class="count">${boardList.bod_CNT}</div>
	                    <div class="count">${boardList.bod_REPLY}</div>
                    </div>
                </c:forEach>
            </div>
            <!-- 페이징 처리 -->
            <div class="board_page">
                <a href="#" class="bt first"><<</a>
                <a href="#" class="bt prev"><</a>
                
				<c:if test="${paging.prev}">
					<a href="/board/list?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
				</c:if>
				
				<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
				 	<a class="num" href="/board/list?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
				</c:forEach>
				
				<!-- next(다음)이 true이면 다음버튼 활성화 -->
				<c:if test="${paging.next}">
					<a href="/board/list?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">다음</a>
				</c:if>                
				              
<!--            <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a> -->
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>
            </div>
            <!-- submit -->
            <div class="bt_wrap">
                <a href="/board/write" class="on">등록</a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>

</form>

</body>
</html> 