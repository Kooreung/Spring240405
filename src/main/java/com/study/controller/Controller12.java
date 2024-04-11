package com.study.controller;

import com.study.domain.MyBean121;
import com.study.domain.MyBean122;
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

    @RequestMapping("sub6")
    public void method6(Model model){
        MyBean121 e1 = new MyBean121("모하비","kia","한국",3000);
        MyBean121 e2 = new MyBean121("모델X","telsa","미국",4000);
        MyBean121 e3 = new MyBean121("XC90","volvo","스웨덴",5000);
        MyBean121 e4 = new MyBean121("x5","bmw","독일",7000);

        model.addAttribute("cars", List.of(e1, e2, e3, e4));
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        MyBean122 e1 = new MyBean122("손흥민","토트넘","한국","축구",List.of("공격수"));
        MyBean122 e2 = new MyBean122("김하성","샌디에이고","한국","야구",List.of("유격수", "2루수"));
        MyBean122 e3 = new MyBean122("오타니","LA","일본","야구",List.of("투수", "지명타자"));
        MyBean122 e4 = new MyBean122("이강인","파리","한국","축구",List.of("미드필더"));
        MyBean122 e5 = new MyBean122("김민재","뮌헨","한국","축구",List.of("수비수"));

        model.addAttribute("playerList",List.of(e1, e2, e3, e4, e5));
    }
}
