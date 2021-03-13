package com.closet.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.closet.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;

	public UserVo login(UserVo userVo) {
		
		return sqlSession.selectOne("user.login", userVo);
	}
	
	// checkId
	public UserVo selectOne(String id) {
		System.out.println("UserDao checkId: " + id);
		
		return sqlSession.selectOne("user.selectById", id);
	}
}
