package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller38 {
    @RequestMapping("/login")
    public String login() {
        return "login";
    }
}
