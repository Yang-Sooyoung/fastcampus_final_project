package com.fastcampus.finalproject.service;

import java.util.List;

import com.fastcampus.finalproject.domain.MemberRent;
import com.fastcampus.finalproject.domain.Rent;

public interface RentService {
	List<Rent> getList() throws Exception;
	List<MemberRent> getBill() throws Exception;
}
