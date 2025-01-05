package com.fastcampus.finalproject.dao;

import java.util.List;

import com.fastcampus.finalproject.domain.Member;

public interface MemberDao {
	int count() throws Exception;
	List<Member> selectAll() throws Exception;
	Member select(Integer cust_no) throws Exception;
	int insert(Member dto) throws Exception;
	int update(Member dto) throws Exception;
}
