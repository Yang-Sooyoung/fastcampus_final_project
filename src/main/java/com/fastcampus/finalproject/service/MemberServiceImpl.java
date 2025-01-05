package com.fastcampus.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fastcampus.finalproject.dao.MemberDao;
import com.fastcampus.finalproject.domain.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao memberDao;
	
	@Override
    public int getCount() throws Exception {
        return memberDao.count();
    }
	
	@Override
    public int write(Member member) throws Exception {
        return memberDao.insert(member);
    }
	
	@Override
	public List<Member> getList() throws Exception {
        return memberDao.selectAll();
    }
	
	@Override
    public Member read(Integer custNo) throws Exception {
		Member member = memberDao.select(custNo);
        return member;
    }
	
	@Override
    public int modify(Member member) throws Exception {
        return memberDao.update(member);
    }
	
}
