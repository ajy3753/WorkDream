package com.cs.workdream.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class Resumecontroller {

	@GetMapping("/enrollresume")
	public String enrollresume() {
		return "member/enrollresume";
	}
	
	@GetMapping("/resumeDashboard")
	public String ResumDacsboard() {
		return "member/resumeDashboard";
	}
	
	@GetMapping("/previewresume")
	public String previewResume() {
		return "member/previewresume";
	}
}
