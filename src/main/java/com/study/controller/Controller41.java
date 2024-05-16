package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/api/main41")
public class Controller41 {

    // 직렬화로 된 json 데이터를 받아야 한다.
    // 역직렬화
    // 기존에는 RequestParam 으로 받았던 것을
    // RequestBody 로 받으면 된다.
    // Key: Value 로 구성되어 있으므로 Map 으로 받으면 된다.
    // String 과 Object
    @PostMapping("/sub1")
    public void sub1(@RequestBody Map<String, Object> map) {
        System.out.println("Controller41.sub1");
        System.out.println("map = " + map);
    }

    @PostMapping("/sub2")
    public void sub2(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    @PostMapping("/sub3")
    public void sub3(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }
}
