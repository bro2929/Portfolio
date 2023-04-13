package bro.pp.mapper;

import java.util.ArrayList;

import bro.pp.model.BoardVO;
import bro.pp.model.CriteriaVO;

public interface BoardMapper {
	
	public void boardWrite(BoardVO board);
	
	public ArrayList<BoardVO> boardList(CriteriaVO cri);
		// board테이블 전체건수 DB설계
		public int total(CriteriaVO cri);
		
	public BoardVO boardDetail(BoardVO board);
	// 목록리스트에서 제목을 클릭한 후 상세내용을 조회할 때 조회수도 같이 update하는 DB 작업 설계
	public void cntUp(BoardVO board);
	
	public BoardVO boardEdit1(BoardVO board);
	public void boardEdit2(BoardVO board);
	
	public void boardDelete(BoardVO board);
}
