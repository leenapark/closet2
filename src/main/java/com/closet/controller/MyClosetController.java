package com.closet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.closet.service.MyClosetService;
import com.closet.vo.MyRoomVo;

@Controller
@RequestMapping(value = "/myroom", method = { RequestMethod.GET, RequestMethod.POST })
public class MyClosetController {

	@Autowired
	private MyClosetService myRoomService;

	// 마이룸 메인
	@RequestMapping(value = "/{userId}/main", method = { RequestMethod.GET, RequestMethod.POST })
	public String myroomMain(@PathVariable("userId") String id,
							 HttpSession session) {
		//myRoom 정보 가져오기(내꺼 혹은 다른 사람꺼)
		MyRoomVo myRoomVo = myRoomService.getMyRoomData(id);
		
		if(myRoomVo != null) {
			//일단 세션만 넣어둠
			session.setAttribute("myRoomVo",myRoomVo);
			
			return "mycloset/main";
		}else {
			//없는 사람 페이지 들어가면
			return "";
		}
	}

	@RequestMapping(value = "/closet", method = { RequestMethod.GET, RequestMethod.POST })
	public String closet() {

		return "mycloset/closet";
	}

	// 코디하기 메인
	@RequestMapping(value = "/doCodi", method = { RequestMethod.GET, RequestMethod.POST })
	public String doCodi() {
		System.out.println("doCodi()");
		return "mycloset/doCodi";
	}

	// 코디하기 글쓰기폼
	@RequestMapping(value = "/codiWriteForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String codiWriteForm() {
		System.out.println("codiWriteForm()");
		return "mycloset/codiWriteForm";

	}

	// 코디하기 글읽기
	@RequestMapping(value = "/readCodi", method = { RequestMethod.GET, RequestMethod.POST })
	public String readCodi() {
		System.out.println("readCodi()");
		return "mycloset/readCodi";

	}

	@RequestMapping(value = "/wishList", method = { RequestMethod.GET, RequestMethod.POST })
	public String wishList() {

		return "mycloset/wishList";
	}

	@RequestMapping(value = "/styzipList", method = { RequestMethod.GET, RequestMethod.POST })
	public String styzipList() {

		return "mycloset/styzipList";
	}

	@RequestMapping(value = "/insertClothes", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String insertClothes(@RequestParam("file") MultipartFile file,
								@RequestParam("data") String jsonFile) {

		myRoomService.insertClothes(file, jsonFile);

		return "redirect:closet";
	}

}
