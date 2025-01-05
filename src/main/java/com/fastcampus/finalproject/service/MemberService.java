package com.fastcampus.finalproject.service;

import java.util.List;

import com.fastcampus.finalproject.domain.Member;

public interface MemberService {
	int getCount() throws Exception;
	Member read(Integer custNo) throws Exception;
	int write(Member member) throws Exception; 
	int modify(Member member) throws Exception;
	List<Member> getList() throws Exception;
}
