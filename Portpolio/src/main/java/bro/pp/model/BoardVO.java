package bro.pp.model;

public class BoardVO {
	
	private int bod_NO;
	private String bod_TITLE;
	private String bod_CONTENT;
	private String bod_ID;
	private String bod_REGDATE;
	private int bod_CNT;
	private int bod_REPLY;
	
	public int getBod_NO() {
		return bod_NO;
	}
	public void setBod_NO(int bod_NO) {
		this.bod_NO = bod_NO;
	}
	public String getBod_TITLE() {
		return bod_TITLE;
	}
	public void setBod_TITLE(String bod_TITLE) {
		this.bod_TITLE = bod_TITLE;
	}
	public String getBod_CONTENT() {
		return bod_CONTENT;
	}
	public void setBod_CONTENT(String bod_CONTENT) {
		this.bod_CONTENT = bod_CONTENT;
	}
	public String getBod_ID() {
		return bod_ID;
	}
	public void setBod_ID(String bod_ID) {
		this.bod_ID = bod_ID;
	}
	public String getBod_REGDATE() {
		return bod_REGDATE;
	}
	public void setBod_REGDATE(String bod_REGDATE) {
		this.bod_REGDATE = bod_REGDATE;
	}
	public int getBod_CNT() {
		return bod_CNT;
	}
	public void setBod_CNT(int bod_CNT) {
		this.bod_CNT = bod_CNT;
	}
	public int getBod_REPLY() {
		return bod_REPLY;
	}
	public void setBod_REPLY(int bod_REPLY) {
		this.bod_REPLY = bod_REPLY;
	}
	
	@Override
	public String toString() {
		return "BoardVO [bod_NO=" + bod_NO + ", bod_TITLE=" + bod_TITLE + ", bod_CONTENT=" + bod_CONTENT + ", bod_ID="
				+ bod_ID + ", bod_REGDATE=" + bod_REGDATE + ", bod_CNT=" + bod_CNT + ", bod_REPLY=" + bod_REPLY + "]";
	}
	
	
	
}
