package com.fastcampus.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fastcampus.finalproject.domain.Member;
import com.fastcampus.finalproject.service.MemberServiceImpl;

@Controller
public class MemberListController {
	@Autowired
	MemberServiceImpl memberService;
	
	@RequestMapping("/member/list")
	public String list(Model m) {
		try {
			List<Member> list = memberService.getList();
			m.addAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/member/list";
	}
	
}
