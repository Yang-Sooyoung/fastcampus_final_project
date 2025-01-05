package com.fastcampus.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fastcampus.finalproject.domain.Rent;
import com.fastcampus.finalproject.service.RentServiceImpl;

@Controller
public class RentListController {
	@Autowired
	RentServiceImpl rentService;
	
	@RequestMapping("/rent/list")
	public String list(Model m) {
		try {
			List<Rent> list = rentService.getList();
			m.addAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/rent/list";
	}
}
