package com.fastcampus.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fastcampus.finalproject.domain.MemberRent;
import com.fastcampus.finalproject.service.RentServiceImpl;

@Controller
public class RentBillController {
	@Autowired
	RentServiceImpl rentService;
	
	@RequestMapping("/rent/bill")
	public String bill(Model m) {
		try {
			List<MemberRent> list = rentService.getBill();
			m.addAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/rent/bill";
	}
}
