package com.javalab.jsp;
/******************************************************
 * 자바 빈즈(java beans)
 * useBean 액션 태그에서 사용할 클래스로 중요한 정보를 저장해서
 * 다른 jsp 페이지로 전달할 때 사용된다.
 * 
 * 자바 빈즈 규약
 * 1. 모든 속성은 private 접근제한자를 가져야 한다.
 * 2. 속성에 값을 세팅하는 setters / getters 메소드가 있어야 한다.
 * 3. 파라미터가 없는 기본 생성자가 있어야 한다.
 *  
******************************************************/


public class Member {
	// 속성, 필드, 멤버변수
	private String id;
	private String password;
	private String name;
	private String email;
	
	// 기본 생성자
	public Member() {
		super();
	}
	
	// 생성자 오버로딩
	public Member(String id, String password, String name, String email) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
	}
	
	//getters and setters
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	// toString 오버라이딩
	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + "]";
	}
	
	
}
