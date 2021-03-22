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
	
	// 회원가입
	public void insertJoin(UserVo userVo) {
		System.out.println("UserDao insertJoin: " + userVo);
		
		sqlSession.insert("insertJoin", userVo);
	}
	
	// 회원 정보 수정
	public UserVo selectModify(int userNo) {
		System.out.println("UserDao");
		
		return sqlSession.selectOne("user.selectModify", userNo);
	}
	
	// 프로필 업데이트
	public int updateProfile(UserVo userVo) {
		System.out.println("userDao: " + userVo);

		return sqlSession.update("user.updateProfile", userVo);
	}
	
}
