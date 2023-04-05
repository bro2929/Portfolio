package bro.pp.model;

public class LoginVO {
	
	private String id1;
	private String password1;
	private String name1;
	private String birth1;
	private String gender1;
	private String email1;
	private String phone1;
	
	
	public String getId1() {
		return id1;
	}
	public void setId1(String id1) {
		this.id1 = id1;
	}
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getBirth1() {
		return birth1;
	}
	public void setBirth1(String birth1) {
		this.birth1 = birth1;
	}
	public String getGender1() {
		return gender1;
	}
	public void setGender1(String gender1) {
		this.gender1 = gender1;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	
	// 콘솔에서 데이터가 잘넘어가는지 보기 위함 
	// object 클래스의 toString() 메서드를 재정의
	@Override
	public String toString() {
		return "LoginVO [id=" + id1 + ", password=" + password1 + ", name=" + name1 + ", phone=" + phone1 + ", email="
				+ email1 + ", name=" + name1 + ", gender=" + gender1 + ", birth=" + birth1 + "]";
	}
	
	
	
	
}
