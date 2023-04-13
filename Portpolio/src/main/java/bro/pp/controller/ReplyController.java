package bro.pp.controller;


import java.util.ArrayList;

import bro.pp.model.CriteriaVO;
import bro.pp.model.ReplyPageVO;
import bro.pp.model.ReplyVO;
import bro.pp.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyService rs;
	// 댓글쓰기
	@RequestMapping(value = "/replies/new", method = RequestMethod.POST)
	public ResponseEntity<String> replywrite(@RequestBody ReplyVO reply){
		// insert가 성공했으면 result변수에 1저장
		// insert가 실패했으면 result변수에 0저장
		int result=rs.rewrite(reply);
		
		System.out.println(reply);
		// result가 1이면 HttpStatus.OK
		// result가 0이면 HttpStatus.INTERNAL_SERVER_ERROR 							// ResponseEntity: select 결과를 통신상태와 함께 보냄
		return result==1? new ResponseEntity<>("success",HttpStatus.OK)				// success문자열을 success로
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);	// error면 error로 던짐(js파일로)
	}
	// 댓글 목록 리스트
	@RequestMapping(value = "/replies/{bod_NO}/{page}", method = RequestMethod.GET)
	public ResponseEntity <ReplyPageVO> getList(@PathVariable("page") int page,@PathVariable("bod_NO") int bod_NO){
		System.out.println("게시판 번호 = "+bod_NO);
		CriteriaVO cri = new CriteriaVO(page,10);//매개변수가 2개인 생성자 호출
		return new ResponseEntity<>(rs.list(cri, bod_NO),HttpStatus.OK);// 이 list임
	}
	// 댓글 수정
	@RequestMapping(value = "/replies/modify", method = RequestMethod.PUT)
	public ResponseEntity<String> replymodify(@RequestBody ReplyVO reply){
		System.out.println(reply);
		// update가 성공했으면 result변수에 1저장
		// update가 실패했으면 result변수에 0저장
		int result=rs.modify(reply);

		// result가 1이면 HttpStatus.OK
		// result가 0이면 HttpStatus.INTERNAL_SERVER_ERROR 
		return result==1? new ResponseEntity<>("success",HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	// 댓글 삭제
	@RequestMapping(value = "/replies/remove", method = RequestMethod.DELETE)
	public ResponseEntity<String> replyremove(@RequestBody ReplyVO reply){
		System.out.println("삭제="+reply);
		// delete가 성공했으면 result변수에 1저장
		// delete가 실패했으면 result변수에 0저장
		int result=rs.remove(reply);
		
		return result==1? new ResponseEntity<>("success",HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
