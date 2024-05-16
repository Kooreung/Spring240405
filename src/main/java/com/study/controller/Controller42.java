package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/main42")
public class Controller42 {

    @GetMapping("sub1")
    @ResponseBody
    public String method1() {
        // return 하려는 값을 view 로 해석하지 않고
        // 응답 본문으로 해석하도록 만든다.
        // -> ResponseBody
        // 이게 없으면 view 로 해석 된다.
        return "어떤 응답";
    }

    @GetMapping("sub2")
    @ResponseBody
    public String method2() {
        double random = Math.random();
        String result = "";
        if (random < 1.0 / 3) {
            return "가위";
        } else if (random < 2.0 / 3) {
            return "바위";
        }
        return "보";
        
    }
}
