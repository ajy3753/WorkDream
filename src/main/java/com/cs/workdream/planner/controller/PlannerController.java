package com.cs.workdream.planner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/planner")
public class PlannerController {

	@GetMapping("/planner")
    public String showPlanner() {
        return "planner/planner"; 
    }
}

