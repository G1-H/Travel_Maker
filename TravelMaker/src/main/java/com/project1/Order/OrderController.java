package com.project1.Order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class OrderController {

	
	@Autowired
	OrderService orderService;
	
	@RequestMapping("/order/regionSelect")
	public ModelAndView select() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/regionSelect");
		return mv;
	}
	
}