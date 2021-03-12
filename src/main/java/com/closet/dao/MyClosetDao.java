package com.closet.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.closet.vo.ClothesVo;
import com.closet.vo.MyRoomVo;

@Repository
public class MyClosetDao {

	@Autowired
	private SqlSession sqlSession;
	
	public void insertClothes(ClothesVo clothesVo) {
		sqlSession.insert("closet.insertClothes", clothesVo);
		
	}

	public MyRoomVo getMyRoomData(String id) {
		
		return sqlSession.selectOne("closet.getMyRoomData",id);
	}
}
