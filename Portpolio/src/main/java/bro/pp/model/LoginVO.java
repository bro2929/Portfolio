package bro.pp.model;

public class LoginVO {
	
	private String mem_ID;
	private String mem_PASSWORD;
	private String mem_NAME;
	private String mem_BIRTH;
	private String mem_GENDER;
	private String mem_EMAIL;
	private String mem_PHONE;
	
	
	public String getmem_ID() {
		return mem_ID;
	}
	public void setmem_ID(String mem_ID) {
		this.mem_ID = mem_ID;
	}
	public String getmem_PASSWORD() {
		return mem_PASSWORD;
	}
	public void setmem_PASSWORD(String mem_PASSWORD) {
		this.mem_PASSWORD = mem_PASSWORD;
	}
	public String getmem_NAME() {
		return mem_NAME;
	}
	public void setmem_NAME(String mem_NAME) {
		this.mem_NAME = mem_NAME;
	}
	public String getmem_BIRTH() {
		return mem_BIRTH;
	}
	public void setmem_BIRTH(String mem_BIRTH) {
		this.mem_BIRTH = mem_BIRTH;
	}
	public String getmem_GENDER() {
		return mem_GENDER;
	}
	public void setmem_GENDER(String mem_GENDER) {
		this.mem_GENDER = mem_GENDER;
	}
	public String getmem_EMAIL() {
		return mem_EMAIL;
	}
	public void setmem_EMAIL(String mem_EMAIL) {
		this.mem_EMAIL = mem_EMAIL;
	}
	public String getmem_PHONE() {
		return mem_PHONE;
	}
	public void setmem_PHONE(String mem_PHONE) {
		this.mem_PHONE = mem_PHONE;
	}

	
	// 콘솔에서 데이터가 잘넘어가는지 보기 위함 
	// object 클래스의 toString() 메서드를 재정의
	@Override
	public String toString() {
		return "LoginVO [id=" + mem_ID + ", password=" + mem_PASSWORD + ", name=" + mem_NAME + ", phone=" + mem_PHONE + ", email="
				+ mem_EMAIL + ", name=" + mem_NAME + ", gender=" + mem_GENDER + ", birth=" + mem_BIRTH + "]";
	}
	
	
	
	
}
