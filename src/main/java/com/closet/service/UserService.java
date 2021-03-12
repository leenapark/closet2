package com.closet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.closet.dao.UserDao;
import com.closet.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	public UserVo login(UserVo userVo) {
		return userDao.login(userVo);
	}
	
	
}
