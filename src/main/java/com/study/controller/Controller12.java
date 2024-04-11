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
//        model.addAttribute("age",3);
//        model.addAttribute("age",13);
        model.addAttribute("age",23);
//        model.addAttribute("age",33);
    }

    @RequestMapping("sub3")
    public void method3(Model model){
        model.addAttribute("dan",7);
    }

    @RequestMapping("sub4")
    public void method4(Model model){
        model.addAttribute("myList",List.of("java", "css", "react"));
        model.addAttribute("foods",List.of("피자", "햄버거", "찌개", "돈까스"));

        model.addAttribute("myMap",Map.of(
                "son", "london",
                "lee", "paris",
                "kim", "seoul"));
        model.addAttribute("cars",Map.of(
                "tesla","usa",
                "kia", "korea",
                "volvo", "sweeden"
        ));
    }

    @RequestMapping("sub5")
    public void method5(Model model){
        model.addAttribute("myList",List.of("java", "css", "react"));
    }
}
