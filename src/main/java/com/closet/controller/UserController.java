package com.closet.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.closet.service.UserService;
import com.closet.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/loginform")
	public String loginForm() {
		System.out.println("usercontroller");
		
		
		return "user/loginForm";
	}
	
	@RequestMapping("/login")
	public String login(@ModelAttribute UserVo userVo, HttpSession session, Model model) {
		
		System.out.println("UserController login");
		UserVo authVo = userService.login(userVo);
		System.out.println(authVo);
		
		if(authVo != null) {

			session.setAttribute("authMember", authVo);
			
			return "redirect:../mycloset/"+authVo.getId()+"/main";
			
		}else {
			//로그인 실패
			return "redirect:loginform?result=fail";
		}
	}
	
	
	// 소셜 로그인
	@RequestMapping(value="/kakao", produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST})
    public String loginFormWithKakao(@RequestParam(value = "code", required = false) String code, HttpSession session) {
        System.out.println("#########" + code);
        String access_Token = userService.getAccessToken(code);
        System.out.println("###access_Token#### : " + access_Token);
        HashMap<String, Object> userInfo = userService.getUserInfo(access_Token);
        System.out.println("userInfo: " + userInfo);
        
        // 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
        if (userInfo.get("email") != null) {
            session.setAttribute("id", userInfo.get("id"));
            session.setAttribute("userId", userInfo.get("email"));
            session.setAttribute("access_Token", access_Token);

            return "redirect:../mycloset/"+userInfo.get("id")+"/main";

        } else {
			return "redirect:loginform?result=fail";
        }
        	
    }
	
	// 소셜 로그아웃
	@RequestMapping(value="/kakaologout")
	public String kakaologout(HttpSession session) {
	    userService.kakaoLogout((String)session.getAttribute("access_Token"));
	    session.removeAttribute("access_Token");
	    session.removeAttribute("userId");
	    return "index";
	}

	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("authMember");
		
		return "redirect:../";
	}
	
	
	@RequestMapping("/joinform")
	public String joinForm() {
		System.out.println("usercontroller joinForm");
		
		return "user/joinForm";
	}
	
	@RequestMapping("/joinform2")
	public String joinForm2() {
		System.out.println("usercontroller joinForm");
		
		return "user/joinForm2";
	}
	
	
	@RequestMapping("/modifyform")
	public String modifyForm(HttpSession session, Model model) {
		System.out.println("UserController modifyForm");
		UserVo authUser = (UserVo) session.getAttribute("authMember");
		System.out.println("modifyform authUser: " + authUser);

		
		UserVo userVo = userService.modifyform(authUser.getUserNo());
		System.out.println("modifyform userVo: " + userVo);
		
		model.addAttribute("modifyUser", userVo);
		
		return "user/modifyForm";
	}
	
	
	
	/********id check*******/
	@ResponseBody
	@RequestMapping(value="/checkid", method = {RequestMethod.GET, RequestMethod.POST})
	public String checkid(@RequestParam("userId") String id) {
		System.out.println("UserController idcheck: " + id);
		
		String response = userService.checkId(id);
		return response;
	}
	
	/*********회원가입*********/
	@RequestMapping(value="/join", method= {RequestMethod.GET, RequestMethod.POST})
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("join: " + userVo.toString());
		userService.join(userVo);
		
		return	"user/joinOk";
	}
	
	/*****************회원가입 정보 수정********************/
	// 프로필 변경
	@ResponseBody
	@RequestMapping(value="/profile", method = {RequestMethod.PUT, RequestMethod.GET, RequestMethod.POST})
	public UserVo modifyProfile(@RequestParam("file") MultipartFile file, @ModelAttribute UserVo userVo) {
		System.out.println("UserController modify: " + file);
				
		UserVo vo = userService.profileUpdate(file, userVo);
		
		return vo;
	}
	
	// 비밀번호 변경
	@ResponseBody
	@RequestMapping(value="/newpassword", method = {RequestMethod.GET, RequestMethod.POST})
	public String newpassword(@ModelAttribute UserVo userVo) {
		System.out.println("UserController password: " + userVo);
		
		String result = userService.updatePass(userVo);
		
		return result;
	}
	
	
	// 정보 변경
	@RequestMapping(value="/modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modify(@ModelAttribute UserVo userVo) {
		System.out.println("UserController modify");
		System.out.println(userVo);
		
		
		int count = userService.modify(userVo);
		
		return "redirect:/user/modifyform";
	}
	
	/***************************follow***********************************/
	@RequestMapping("/following")
	public String following() {
		System.out.println("UserController following");
		
		
		return "user/following";
	}
	
	@RequestMapping("/followers")
	public String followers() {
		System.out.println("UserController followers");
		
		
		return "user/followers";
	}
}
