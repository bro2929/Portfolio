package bro.pp.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import bro.pp.mapper.BoardMapper;
import bro.pp.model.BoardVO;
import bro.pp.model.CriteriaVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardMapper bm;

	public void boardWrite(BoardVO board) {
		bm.boardWrite(board);
	}
	public ArrayList<BoardVO> boardList(CriteriaVO cri) {
		return bm.boardList(cri);
	}
		public int total(CriteriaVO cri) {
			return bm.total(cri);
		}
	@Transactional
	public BoardVO boardDetail(BoardVO board) {
		// 상세페이지 조회 할 때 조회수 +1 UPDATE
		bm.cntUp(board);		
		return bm.boardDetail(board);
	}
	public BoardVO boardEdit1(BoardVO board) {
		return bm.boardEdit1(board);
	}
	public void boardEdit2(BoardVO board) {
		bm.boardEdit2(board);
	}	
	public void boardDelete(BoardVO board) {
		bm.boardDelete(board);
	}
}
