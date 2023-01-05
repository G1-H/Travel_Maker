package com.project1.myInfo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MyInfoController {
	
	@RequestMapping("/myInfo/myInfo")
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("myInfo/myInfo");
		return mv;
	}
}
