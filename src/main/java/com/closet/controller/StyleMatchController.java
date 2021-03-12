package com.closet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StyleMatchController {
	

	
	@RequestMapping(value="/codi", method= {RequestMethod.GET,RequestMethod.POST})
	public String codiBoard( ) {
			
		return"stylematch/codilist";
		
	}
	
	@RequestMapping(value="/codiWrite", method= {RequestMethod.GET,RequestMethod.POST})
	public String codiBoardWrite( ) {
			
		return"stylematch/writeForm";
		
	}
	
	
	@RequestMapping(value="/codiRead", method= {RequestMethod.GET,RequestMethod.POST})
	public String codiBoardRead( ) {
			
		return"stylematch/read";
		
	}
}
