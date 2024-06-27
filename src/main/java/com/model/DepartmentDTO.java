package com.model;

public class DepartmentDTO {

	// DTO 또는 VO클래스는 데이터를 옮기기 위한 클래스로, 테이블별로 1개씩 생성함
	// 관련변수를 테이블과 동일한 이름으로 선언하고, getter, setter메서드를 반드시 생성

	private int DepartmentId;
	private String DepartmentName;
	private int managerId;
	private int locationId;

	// 생성자는, 기본생성자 그리고 맴버변수를 초기화하는 생성자 2개를 만듬
	public DepartmentDTO() {
		// TODO Auto-generated constructor stub
	}

	public DepartmentDTO(int departmentId, String departmentName, int managerId, int locationId) {
		super();
		DepartmentId = departmentId;
		DepartmentName = departmentName;
		this.managerId = managerId;
		this.locationId = locationId;
	}
	
	//getter, setter
	public int getDepartmentId() {
		return DepartmentId;
	}

	public void setDepartmentId(int departmentId) {
		DepartmentId = departmentId;
	}

	public String getDepartmentName() {
		return DepartmentName;
	}

	public void setDepartmentName(String departmentName) {
		DepartmentName = departmentName;
	}

	public int getManagerId() {
		return managerId;
	}

	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}

	public int getLocationId() {
		return locationId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}
	
	
}
