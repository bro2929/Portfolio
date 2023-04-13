package bro.pp.model;

import java.util.ArrayList;

public class ReplyPageVO {
	private int replycnt;				// 댓글 수
	private ArrayList<ReplyVO> list;	// ReplyVO 필드
	
	public ReplyPageVO(int replycnt,ArrayList<ReplyVO> list){
		this.replycnt=replycnt;
		this.list=list;
	}
	
	public int getReplycnt() {
		return replycnt;
	}
	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}
	public ArrayList<ReplyVO> getList() {
		return list;
	}
	public void setList(ArrayList<ReplyVO> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "ReplyPageVO [replycnt=" + replycnt + ", list=" + list + "]";
	}
	
	
	
}
