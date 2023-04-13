package bro.pp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bro.pp.model.BoardVO;
import bro.pp.service.BoardService;
import bro.pp.model.CriteriaVO;
import bro.pp.model.PageVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService bs;
	
	// 글 작성
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String boardWrite(BoardVO board) {
		bs.boardWrite(board);
		return "redirect:/board/list";
	}
	// 게시판 리스트 보기
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String boardList(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// list.jsp 실행 할 때 select 된 결과를 가져와라
		model.addAttribute("list", bs.boardList(cri));
		// list.jsp 실행 할 때 PageVO에 저장되어 있는 데이터를 가져와라.
		//                           생성자 호출(매개변수가 2개인 생성자)
		// board테이블(게시판테이블)에 전체 건수(select해서)를 아래에 190대신에 대입
		int total = bs.total(cri);
		//model.addAttribute("paging", new PageVO(cri, 190));
		model.addAttribute("paging", new PageVO(cri, total));
		return "board/list";
	}
	// 게시판 상세페이지 보기
	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public String boardDetail(Model model,BoardVO board) {
		model.addAttribute("detail", bs.boardDetail(board));
		return "board/detail";
	}
	// 게시판 글 수정 페이지로 이동
		@RequestMapping(value = "/board/edit", method = RequestMethod.GET)
		public String boardEdit1(Model model, BoardVO board) {
			System.out.println(board);
			model.addAttribute("detail", bs.boardEdit1(board));
			return "board/edit";
		}	
	
	// 게시판 글 수정 기능
	@RequestMapping(value = "/board/edit", method = RequestMethod.POST)
	public String boardEdit2(BoardVO board, RedirectAttributes rttr) {
		bs.boardEdit2(board);
		rttr.addAttribute("bod_NO", board.getBod_NO());
		return "redirect:/board/detail";
	}
	
	// 게시판 글 삭제
	@RequestMapping(value = "/board/detail", method = RequestMethod.POST)
	public String boardDelete(BoardVO board) {
		bs.boardDelete(board);
		return "redirect:/board/list";
	}

	
}
