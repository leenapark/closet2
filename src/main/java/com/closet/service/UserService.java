package com.closet.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.closet.dao.UserDao;
import com.closet.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	public UserVo login(UserVo userVo) {
		return userDao.login(userVo);
	}
	
	
	// checkid
	public String checkId(String id) {
		System.out.println("UserService checkId");
		String response = "";
		UserVo userVo = userDao.selectOne(id);
		
		if (userVo == null) {
			response = "can";
		} else {
			response = "cant";
		}
		
		return response;
	}
	
	// 회원가입
	public int join(UserVo userVo) {
		System.out.println("UserService join: " + userVo);
		
		return userDao.insertJoin(userVo);
	}
	
	// 회원 정보 수정 해당 유저 정보 가져오기
	public UserVo modifyform(int userNo) {
		System.out.println("UserService modifyform");
		
		return userDao.selectModify(userNo);
	}

	// profile update
	public UserVo profileUpdate(MultipartFile file, UserVo userVo) {
		System.out.println("UserService profileUpdate");

		String saveDir = "D:\\closet\\FileUp";
		
		// 오리지널 파일 이름
		String orgName = file.getOriginalFilename();
		System.out.println("orgName: " + orgName);
		
		// 파일 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));
		
		String saveName = System.currentTimeMillis()+UUID.randomUUID().toString() + exName;
		
		String filePath = saveDir + "\\" + saveName;
		
		
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bos = new BufferedOutputStream(out);
			
			bos.write(fileData);
			bos.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		userVo.setProfileImg(saveName);
		
		
		userDao.updateProfile(userVo);
		
		System.out.println(userVo.getProfileImg());
		
		return userVo;
		
	}
	
	// password update
	public String updatePass(UserVo userVo) {
		System.out.println("UserService updatePass");
		int count = userDao.updatePass(userVo);
		String result = "";
		
		if (count == 1) {
			result = "can";
		}
		
		return result;
	}
	
	
	// 정보 수정
	public int modify(UserVo userVo) {
		System.out.println("UserService modify");
		
		return userDao.updateInfo(userVo);
	}
	
}

