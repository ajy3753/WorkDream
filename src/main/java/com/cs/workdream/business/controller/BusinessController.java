package com.cs.workdream.business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessController {
	
	// 맵핑
	@GetMapping("/business/recruitmentStatus")
    public String reStatus() {
        return "business/recruitmentStatus";
    }
	
	@GetMapping("/business/jobPostingRegistration")
    public String jobRegistration() {
        return "business/jobPostingRegistration";
    }
	
	@GetMapping("/business/announcementinformation")
    public String announcement() {
        return "business/announcementinformation";
    }
	
	@GetMapping("/business/positionAndCareer")
    public String positionCareer() {
        return "business/positionAndCareer";
    }
	
	@GetMapping("/business/applicantsStatus")
    public String appStatus() {
        return "business/applicantsStatus";
    }
	
    @GetMapping("/business/applicantsList")
    public String appList() {
        return "business/applicantsList";
    }
    
    @GetMapping("/business/bookmark")
    public String bookmarkList() {
        return "business/bookmarkList";
    }
    
    @GetMapping("/business/businessMypage")
    public String businessMypage() {
        return "business/businessMypage";
    }
    
    @GetMapping("/business/businessProfilePost")
    public String businessProfilePost() {
        return "business/businessProfilePost";
    }
}
