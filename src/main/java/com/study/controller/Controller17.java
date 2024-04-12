package com.study.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main17")
public class Controller17 {

    @RequestMapping("sub1")
    public void sub1(Model model, HttpSession session){
        model.addAttribute("name", "흥민");
        session.setAttribute("city", "london");

        // ${model} -> 테슬라
        // ${requestScope.model} -> 테슬라
        // ${sessionScope.model} -> 제네시스
        model.addAttribute("model", "테슬라");
        session.setAttribute("model", "제네시스");
    }

    @RequestMapping("sub2")
    public String sub2(Model model){
        return "/main17/sub1";
    }
}
