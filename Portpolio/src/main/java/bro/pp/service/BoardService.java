package bro.pp.service;

import java.util.ArrayList;

import bro.pp.model.BoardVO;
import bro.pp.model.CriteriaVO;

public interface BoardService {
	// 게시판 글 작성
	public void boardWrite(BoardVO board);
	// 게시판 리스트
	public ArrayList<BoardVO> boardList();
/*		// board테이블 전체건수 설계
		public int total(CriteriaVO cri);*/
	public BoardVO boardDetail(BoardVO board);
}
