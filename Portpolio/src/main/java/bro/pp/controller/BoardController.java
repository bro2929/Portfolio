package bro.pp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bro.pp.model.BoardVO;
import bro.pp.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService bs;
	
	// 글 작성
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String boardWrite(BoardVO board) {
		bs.boardWrite(board);
		return "board/write";
	}
	// 게시판 리스트 보기
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String boardList(Model model) {
		model.addAttribute("list", bs.boardList());
		return "board/list";
	}
	// 게시판 상세페이지 보기
	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public String boardDetail(Model model,BoardVO board) {
		model.addAttribute("detail", bs.boardDetail(board));
		return "board/detail";
	}

	
}
