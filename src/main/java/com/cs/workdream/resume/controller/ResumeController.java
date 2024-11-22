package com.cs.workdream.resume.controller;

import com.cs.workdream.resume.model.vo.Resume;
import com.cs.workdream.resume.service.ResumeService;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/resume")
public class ResumeController {


    private static final Logger logger = LoggerFactory.getLogger(ResumeController.class);

    private final ResumeService resumeService;

    @Autowired
    public ResumeController(ResumeService resumeService) {
        this.resumeService = resumeService;
    }

    @GetMapping("/enrollresume")
    public String showEnrollResumePage(org.springframework.ui.Model model, HttpSession session) {
        Resume resume = new Resume();

        model.addAttribute("resume", resume);
        return "resume/enrollresume"; // JSP 경로
        
    }

    @PostMapping("/insert.re")
    public String insertResume(Resume resume, RedirectAttributes redirectAttributes) {
        // 이력서 데이터 저장 로직
            return "resume/resumeDashboard";
    }
}
