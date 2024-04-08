package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main8")
public class Controller08 {

    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("name1", "value1");
        model.addAttribute("name2", "value2");
    }

    @RequestMapping("sub2")
    public void method2(Model model) {
        model.addAttribute("city", "서울");
        model.addAttribute("address", "신촌");
    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        model.addAttribute("name", "김철수");
        model.addAttribute("age", "30");
    }

    @RequestMapping("sub4")
    public void method4(Model model) {
        // model attribute name : String
        // model attribute value : Object
            // 따라서 model attribute 의 value 는 무엇이든 가능
            // 자주 사용하는 타입
                // String, 기본타입(Wrapper)
                // Array, List, Map
                // JavaBeans

            // Array
        model.addAttribute("car",
                new String[] {"tesla", "kia", "hundai"
        });
    }

    @RequestMapping("sub5")
    public void method5(Model model) {
        model.addAttribute("cities",
                new String[]{"서울","대구","부산"});
        model.addAttribute("countries",
                new String[]{"한국","미국","케냐"});
    }



    @RequestMapping("sub8")
    public void method8(Model model) {
        model.addAttribute("numbers", List.of(500, 3.14));
        model.addAttribute("cities", List.of("서울", "런던", "뉴욕"));
    }

    @RequestMapping("sub9")
    public void method9(Model model) {
        Map<String, String> map = new HashMap<>();
        map.put("name", "흥민");
        map.put("age", "30");
        map.put("address", "런던");

        model.addAttribute("myMap", map);
    }

    @RequestMapping("sub10")
    public void method10(Model model) {
        Map<String, String> names =Map.of(
                "son", "토트넘",
                "lee", "파리",
                "kim", "뮌헨"
        );
        model.addAttribute("name", names);

        Map<String, String> others =Map.of(
                "손흥민","토트넘",
                "lee gang in", "파리"
        );
        model.addAttribute("others", others);
    }
}
