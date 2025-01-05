package com.fastcampus.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fastcampus.finalproject.dao.RentDao;
import com.fastcampus.finalproject.domain.MemberRent;
import com.fastcampus.finalproject.domain.Rent;

@Service
public class RentServiceImpl implements RentService {
	@Autowired
	private RentDao rentDao;
	
	@Override
	public List<Rent> getList() throws Exception {
		return rentDao.selectAll();
	}
	
	public List<MemberRent> getBill() throws Exception {
		return rentDao.selectBill();
	}
}
