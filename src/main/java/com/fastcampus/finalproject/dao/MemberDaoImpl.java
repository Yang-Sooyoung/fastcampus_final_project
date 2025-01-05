package com.fastcampus.finalproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fastcampus.finalproject.domain.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSession session;
	private static String namespace = "com.fastcampus.finalproject.dao.memberMapper.";
    
	public int count() throws Exception {
        return session.selectOne(namespace+"count");
    } 

	@Override
    public List<Member> selectAll() throws Exception {
        return session.selectList(namespace+"selectAll");
	} 
	 
	@Override
	public Member select(Integer custNo) throws Exception {
		return session.selectOne(namespace+"select", custNo);
	}
	
	@Override 
	public int insert(Member dto) throws Exception {
		return session.insert(namespace+"insert", dto); 
	}
	
	@Override 
	public int update(Member dto) throws Exception {
		return session.update(namespace+"update", dto); 
	}
	
}
