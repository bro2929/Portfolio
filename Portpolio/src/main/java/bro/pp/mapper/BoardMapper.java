package bro.pp.mapper;

import java.util.ArrayList;

import bro.pp.model.BoardVO;
import bro.pp.model.CriteriaVO;

public interface BoardMapper {
	
	public void boardWrite(BoardVO board);
	
	public ArrayList<BoardVO> boardList();
/*		// board테이블 전체건수 DB설계
		public int total(CriteriaVO cri);*/
	public BoardVO boardDetail(BoardVO board);
}
