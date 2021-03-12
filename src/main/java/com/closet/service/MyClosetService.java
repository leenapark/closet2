package com.closet.service;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.closet.dao.MyClosetDao;
import com.closet.vo.ClothesVo;
import com.closet.vo.MyRoomVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class MyClosetService {
	
	@Autowired
	private MyClosetDao myRoomDao;
	
	public void insertClothes(MultipartFile file, String jsonFile) {
		
		String saveDir = "D:\\closet\\FileUp";
		
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		String logoFile = System.currentTimeMillis()+UUID.randomUUID().toString()+exName;
		
		String filePath = saveDir+"\\"+logoFile;
		
		//이미지 흰색 배경 날리기
		BufferedImage image = null;
		try {
			byte[]fileData = file.getBytes();
			image = ImageIO.read(new ByteArrayInputStream(fileData));
			int width = image.getWidth();
			int height = image.getHeight();
			
			for(int w=0; w< width; w++) {
				for(int h=0; h<height; h++) {
					//-1이면 흰색
					if(image.getRGB(w, h) == -1) {
						image.setRGB(w, h, Color.TRANSLUCENT);
					} 
				}
			}
			
			ImageIO.write(image, "png", new File(filePath));
			
			//string으로 json 형식으로 넘어오는 것을
			//ObjectMapper를 통해서 vo에 데이터를 넣음
			ClothesVo clothesVo = new ClothesVo();
			
			ObjectMapper objectMapper = new ObjectMapper();
			try {
				clothesVo = objectMapper.readValue(jsonFile,ClothesVo.class);
			}catch (Exception e) {
				System.out.println(e);
			}
			
			//clothesVo에 timeMill과 uuid로 바꾼 이미지 이름 넣기
			clothesVo.setClothImg(logoFile);
			//옷 db에 넣기
			myRoomDao.insertClothes(clothesVo);
			
		}catch(Exception e) {
			
		}
		
	}

	//myroom정보 가져오기
	public MyRoomVo getMyRoomData(String id) {
		return myRoomDao.getMyRoomData(id);
		
	}
}
