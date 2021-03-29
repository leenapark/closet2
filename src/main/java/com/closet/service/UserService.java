package com.closet.service;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.closet.dao.UserDao;
import com.closet.vo.UserVo;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

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

		String saveDir = "D:\\closet\\Profile";
		
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
	
	
	// kakao login
	public String getAccessToken (String authorize_code) {
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";
        
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            
            //    POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            
            //    POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=8d1281e9c14b86fda8651f0b64c4769e");
            sb.append("&redirect_uri=http://localhost:8088/closet2/user/kakao");
            sb.append("&code=" + authorize_code);
            bw.write(sb.toString());
            bw.flush();
            
            //    결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);
 
            //    요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            
            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);
            
            //    Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);
            
            access_Token = element.getAsJsonObject().get("access_token").getAsString();
            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
            System.out.println("access_token : " + access_Token);
            System.out.println("refresh_token : " + refresh_Token);
            
            br.close();
            bw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } 
        
        return access_Token;
    }
	
	
	
	// kakao userInfo
	public HashMap<String, Object> getUserInfo (String access_Token) {
	    
	    //    요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
	    HashMap<String, Object> userInfo = new HashMap<>();
	    String reqURL = "https://kapi.kakao.com/v2/user/me";
	    try {
	        URL url = new URL(reqURL);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("POST");
	        
	        //    요청에 필요한 Header에 포함될 내용
	        conn.setRequestProperty("Authorization", "Bearer " + access_Token);
	        
	        int responseCode = conn.getResponseCode();
	        System.out.println("responseCode : " + responseCode);
	        
	        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        
	        String line = "";
	        String result = "";
	        
	        while ((line = br.readLine()) != null) {
	            result += line;
	        }
	        System.out.println("response body : " + result);
	        
	        JsonParser parser = new JsonParser();
	        JsonElement element = parser.parse(result);
	        
	        JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
	        JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
	        
	        
	        String nickname = properties.getAsJsonObject().get("nickname").getAsString();
	        String email = kakao_account.getAsJsonObject().get("email").getAsString();
	        
	        userInfo.put("nickname", nickname);
	        userInfo.put("email", email);
	        
	    } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    
	    return userInfo;
	}

	
}

