package com.fastcampus.finalproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fastcampus.finalproject.domain.MemberRent;
import com.fastcampus.finalproject.domain.Rent;

@Repository
public class RentDaoImpl implements RentDao {
	@Autowired
	private SqlSession session;
	private static String namespace = "com.fastcampus.finalproject.dao.rentMapper.";
	
	@Override
	public List<Rent> selectAll() throws Exception {
		return session.selectList(namespace+"selectAll");
	}
	
	@Override
	public List<MemberRent> selectBill() throws Exception {
		return session.selectList(namespace+"selectBill");
	}

}
