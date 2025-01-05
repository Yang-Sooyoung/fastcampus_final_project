package com.fastcampus.finalproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fastcampus.finalproject.domain.Member;
import com.fastcampus.finalproject.service.MemberServiceImpl;

@Controller
public class MemberAddController {
	@Autowired
	MemberServiceImpl memberService;
	
	@RequestMapping("/member/write")
	public String write(Model m, @RequestParam int cust_no, @RequestParam String cust_name, @RequestParam String phone,
			@RequestParam String join_date, @RequestParam String cust_email, @RequestParam String grade) {
		
		try {
			Member member = new Member(cust_no, cust_name, phone, join_date, cust_email, grade);
			memberService.write(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/member/list";
	}

	@RequestMapping("/member/add")
	public String list(Model m) {
		try {
			int count = memberService.getCount();
			m.addAttribute("count", count);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/member/add";
	}
}
