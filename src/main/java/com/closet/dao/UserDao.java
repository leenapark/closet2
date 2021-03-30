package com.closet.dao;

import java.util.HashMap;

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
	public int insertJoin(UserVo userVo) {
		System.out.println("UserDao insertJoin: " + userVo);
		
		return sqlSession.insert("user.insertJoin", userVo);
	}
	
	// 회원 정보 수정 폼
	public UserVo selectModify(int userNo) {
		System.out.println("UserDao");
		
		return sqlSession.selectOne("user.selectModify", userNo);
	}
	
	// 프로필 업데이트
	public int updateProfile(UserVo userVo) {
		System.out.println("userDao: " + userVo);

		return sqlSession.update("user.updateProfile", userVo);
	}
	
	
	// 비밀번호 변경
	public int updatePass(UserVo userVo) {
		System.out.println("userDao updatePass");
		
		return sqlSession.update("user.updatePass", userVo);
	}
	
	// 정보 수정
	public int updateInfo(UserVo userVo) {
		System.out.println("userDao updateInfo");
		
		return sqlSession.update("user.updateInfo", userVo);
	}
	
	// 소셜 로그인
	public void insertKakao( HashMap<String, Object> userInfo) {
		sqlSession.insert("user.joinKakao", userInfo);
	}
	
}
