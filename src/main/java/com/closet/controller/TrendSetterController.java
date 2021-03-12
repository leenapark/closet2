package com.closet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrendSetterController {
	@RequestMapping(value = "/bestcodi", method = { RequestMethod.GET, RequestMethod.POST })
	public String bestCodiList() {
		return "trendsetter/bestcodiList";
	}

	// 베스트드레서 글읽기
	@RequestMapping(value = "/readBestcodi", method = { RequestMethod.GET, RequestMethod.POST })
	public String bets() {
		System.out.println("readBestcodi()");
		
		return "trendsetter/readBestcodi";
	}
}
