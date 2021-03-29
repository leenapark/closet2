package com.closet.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.closet.vo.FollowVo;

@Repository
public class FollowDao {

	@Autowired
	private SqlSession sqlSession;
	
	public void toFollow(Map<String, Object> followMap) {

		sqlSession.insert("follow.toFollow",followMap);
		
	}

	public void unFollow(Map<String, Object> followMap) {
		
		sqlSession.delete("follow.unFollow",followMap);
		
	}
	
	public int countFollwing(int userNo) {

		return sqlSession.selectOne("follow.countFollowing",userNo);
	}
	
	public int countFollwer(int userNo) {
		
		return sqlSession.selectOne("follow.countFollower",userNo);
	}

	public FollowVo isFollow(Map<String,Object> isFollowMap) {
		
		return sqlSession.selectOne("follow.isFollow",isFollowMap);
	}
}
