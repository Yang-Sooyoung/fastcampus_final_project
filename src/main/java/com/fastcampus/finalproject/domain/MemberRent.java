package com.fastcampus.finalproject.domain;

public class MemberRent {
	private int cust_no;
	private String cust_name;
	private String grade;
	private int rent_price;
	
	public MemberRent() {}

	public MemberRent(int cust_no, String cust_name, String grade, int rent_price) {
		super();
		this.cust_no = cust_no;
		this.cust_name = cust_name;
		this.grade = grade;
		this.rent_price = rent_price;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberRent other = (MemberRent) obj;
		if (cust_name == null) {
			if (other.cust_name != null)
				return false;
		} else if (!cust_name.equals(other.cust_name))
			return false;
		if (cust_no != other.cust_no)
			return false;
		if (grade == null) {
			if (other.grade != null)
				return false;
		} else if (!grade.equals(other.grade))
			return false;
		if (rent_price != other.rent_price)
			return false;
		return true;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cust_name == null) ? 0 : cust_name.hashCode());
		result = prime * result + cust_no;
		result = prime * result + ((grade == null) ? 0 : grade.hashCode());
		result = prime * result + rent_price;
		return result;
	}

	public int getCustNo() {
		return cust_no;
	}
	public void setCustNo(int cust_no) {
		this.cust_no = cust_no;
	}
	public String getCustName() {
		return cust_name;
	}
	public void setCustName(String cust_name) {
		this.cust_name = cust_name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getRentPrice() {
		return rent_price;
	}
	public void setRentPrice(int rent_price) {
		this.rent_price = rent_price;
	}
		
}
