package bro.pp.service;

import java.util.ArrayList;

import bro.pp.model.BoardVO;
import bro.pp.model.CriteriaVO;

public interface BoardService {
	// 게시판 글 작성
	public void boardWrite(BoardVO board);
	// 게시판 리스트
	public ArrayList<BoardVO> boardList(CriteriaVO cri);
		// board테이블 전체건수 설계
		public int total(CriteriaVO cri);
	// 게시판 상세 페이지
	public BoardVO boardDetail(BoardVO board);
	// 게시판 글 수정 페이지로
	public BoardVO boardEdit1(BoardVO board);
	// 게시판 글 수정 기능
	public void boardEdit2(BoardVO board);
	// 게시판 글 삭제
	public void boardDelete(BoardVO board);
	
	
}
