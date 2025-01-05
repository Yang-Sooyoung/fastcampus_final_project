package com.fastcampus.finalproject.domain;

import java.util.Objects;

public class Member{
	private int cust_no;
	private String cust_name;
	private String phone;
	private String join_date;
	private String cust_email;
	private String grade;
	
	public Member() {}

	public Member(int cust_no, String cust_name, String phone, String join_date, String cust_email, String grade) {
		super();
		this.cust_no = cust_no;
		this.cust_name = cust_name;
		this.phone = phone;
		this.join_date = join_date;
		this.cust_email = cust_email;
		this.grade = grade;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Member other = (Member) obj;
		return Objects.equals(cust_email, other.cust_email) && Objects.equals(cust_name, other.cust_name)
				&& cust_no == other.cust_no && Objects.equals(grade, other.grade)
				&& Objects.equals(join_date, other.join_date) && Objects.equals(phone, other.phone);
	}

	@Override
	public int hashCode() {
		return Objects.hash(cust_email, cust_name, cust_no, grade, join_date, phone);
	}

	@Override
	public String toString() {
		return "Member [cust_no=" + cust_no + ", cust_name=" + cust_name + ", phone=" + phone + ", join_date=" + join_date
				+ ", cust_email=" + cust_email + ", grade=" + grade + "]";
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getJoinDate() {
		return join_date;
	}

	public void setJoinDate(String join_date) {
		this.join_date = join_date;
	}

	public String getCustEmail() {
		return cust_email;
	}

	public void setCustEmail(String cust_email) {
		this.cust_email = cust_email;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
}
