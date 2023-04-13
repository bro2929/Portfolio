package bro.pp.model;

public class ReplyVO {
	private int rep_NO;				// 댓글번호
	private String rep_CONTENT;		// 댓글내용
	private String mem_ID;			// 아이디
	private String rep_REGDATE;		// 댓글작성일
	private int bod_NO;				// 게시판번호
	

	
	public int getRep_NO() {
		return rep_NO;
	}
	public void setRep_NO(int rep_NO) {
		this.rep_NO = rep_NO;
	}
	public String getRep_CONTENT() {
		return rep_CONTENT;
	}
	public void setRep_CONTENT(String rep_CONTENT) {
		this.rep_CONTENT = rep_CONTENT;
	}
	public String getMem_ID() {
		return mem_ID;
	}
	public void setMem_ID(String mem_ID) {
		this.mem_ID = mem_ID;
	}
	public String getRep_REGDATE() {
		return rep_REGDATE;
	}
	public void setRep_REGDATE(String rep_REGDATE) {
		this.rep_REGDATE = rep_REGDATE;
	}
	public int getBod_NO() {
		return bod_NO;
	}
	public void setBod_NO(int bod_NO) {
		this.bod_NO = bod_NO;
	}
	
	
	@Override
	public String toString() {
		return "ReplyVO [rep_NO=" + rep_NO + ", rep_CONTENT=" + rep_CONTENT + ", mem_ID=" + mem_ID + ", rep_REGDATE="
				+ rep_REGDATE + ", bod_NO=" + bod_NO + "]";
	}
	
	
}
