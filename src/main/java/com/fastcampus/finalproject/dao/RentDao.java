package com.fastcampus.finalproject.dao;

import java.util.List;

import com.fastcampus.finalproject.domain.MemberRent;
import com.fastcampus.finalproject.domain.Rent;

public interface RentDao {
	List<Rent> selectAll() throws Exception;
	List<MemberRent> selectBill() throws Exception;
}
