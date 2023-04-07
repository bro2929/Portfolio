package bro.pp.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public ArrayList<BoardVO> boardList() {
		return bm.boardList();
	}
/*		public int total(CriteriaVO cri) {
			return bm.total(cri);
		}*/
	public BoardVO boardDetail(BoardVO board) {
		return bm.boardDetail(board);
	}
}
