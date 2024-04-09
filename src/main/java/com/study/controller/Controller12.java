package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main12")
public class Controller12 {
    @RequestMapping("sub1")
    public void method1(Model model){

        model.addAttribute("age",30);
        model.addAttribute("products", List.of("Apple", "Banana", "Watermelon", "Orange"));
        model.addAttribute("member1",
                Map.of(
                        "country","korea",
                        "age","30"
                ));
        model.addAttribute("member2",
                Map.of(
                        "country","korea",
                        "age","15"
                ));
        model.addAttribute("member3",
                Map.of(
                        "country","us",
                        "age","25"
                ));
        model.addAttribute("member4",
                Map.of(
                        "country","us",
                        "age","13"
                ));
    }

    @RequestMapping("sub2")
    public void method2(Model model){

    }
}
