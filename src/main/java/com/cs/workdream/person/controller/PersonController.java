package com.cs.workdream.person.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/person")
public class PersonController {
	@GetMapping("/applicantsMypage")
    public String applicantsMypage() {
        return "member/applicantsMypage"; // applicantsMypage.jsp
    }

	@GetMapping("/applicationmanage")
	public String applicationmanage() {
		return "member/applicationmanage";
	}
	
	@GetMapping("/clipping")
	public String clipping() {
		return "member/clipping";
	}
	
	@GetMapping("/clippingcompany")
	public String clippingcompany() {
		return "member/clippingcompany";
	}
}
