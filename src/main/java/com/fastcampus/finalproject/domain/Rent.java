package com.fastcampus.finalproject.domain;

import java.util.Objects;

public class Rent {
	private int cust_no;
	private int rent_no;
	private String book_code;
	private int rent_price;
	private String rent_date;
	
	public Rent() {}

	public Rent(int cust_no, int rent_no, String book_code, int rent_price, String rent_date) {
		super();
		this.cust_no = cust_no;
		this.rent_no = rent_no;
		this.book_code = book_code;
		this.rent_price = rent_price;
		this.rent_date = rent_date;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Rent other = (Rent) obj;
		return Objects.equals(cust_no, other.cust_no) && Objects.equals(rent_no, other.rent_no)
				&& book_code == other.book_code && Objects.equals(rent_price, other.rent_price)
				&& Objects.equals(rent_date, other.rent_date);
	}

	@Override
	public int hashCode() {
		return Objects.hash(cust_no, rent_no, book_code, rent_price, rent_date);
	}
	
	@Override
	public String toString() {
		return "Rent [cust_no=" + cust_no + ", rent_no=" + rent_no + ", book_code=" + book_code + ", rent_price="
				+ rent_price + ", rent_date=" + rent_date + "]";
	}

	public int getCustNo() {
		return cust_no;
	}

	public void setCustNo(int cust_no) {
		this.cust_no = cust_no;
	}

	public int getRentNo() {
		return rent_no;
	}

	public void setRentNo(int rent_no) {
		this.rent_no = rent_no;
	}

	public String getBookCode() {
		return book_code;
	}

	public void setBookCode(String book_code) {
		this.book_code = book_code;
	}

	public int getRentPrice() {
		return rent_price;
	}

	public void setRentPrice(int rent_price) {
		this.rent_price = rent_price;
	}

	public String getRentDate() {
		return rent_date;
	}

	public void setRentDate(String rent_date) {
		this.rent_date = rent_date;
	}
	
}
