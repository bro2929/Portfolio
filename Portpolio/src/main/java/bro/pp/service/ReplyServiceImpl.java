package bro.pp.service;

import java.util.ArrayList;

import bro.pp.mapper.ReplyMapper;
import bro.pp.model.CriteriaVO;
import bro.pp.model.ReplyPageVO;
import bro.pp.model.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService{
	@Autowired
	ReplyMapper rm;
	
	// 댓글 쓰기를 위한 구현
	public int rewrite(ReplyVO reply) {
		return rm.rewrite(reply);
	}
	// 댓글 목록 리스트를 위한 구현
	public ReplyPageVO list(CriteriaVO cri,int bod_NO){
		System.out.println("replyservice=" + bod_NO);
		return new ReplyPageVO(rm.rpycnt(bod_NO),rm.list(cri,bod_NO));
	}
	// 댓글 수정을 위한 구현
	public int modify(ReplyVO reply) {
		return rm.modify(reply);
	}
	// 댓글 삭제를 위한 구현
	public int remove(ReplyVO reply) {
		return rm.remove(reply);
	}
	
	
}