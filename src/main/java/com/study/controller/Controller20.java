package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main20")
public class Controller20 {

    @RequestMapping("sub1")
    public void sub1(){
    }
    @RequestMapping("sub2")
    public void sub2(){
    }
    @RequestMapping("sub3")
    public void sub3(){
    }
    @RequestMapping("sub4")
    public void sub4(){
    }
    @RequestMapping("sub5")
    public void sub5(String player, Model model){
        model.addAttribute("result",player + " 검색");
    }
    @RequestMapping("sub6")
    public void sub6(String address, String type ,Model model){
        model.addAttribute("result",address + " 의 " + type + " 검색");
    }
    @RequestMapping("sub7")
    public void sub7(String name, Integer age ,Model model){
        model.addAttribute("playerName", "선수 이름 : " + name);
        model.addAttribute("playerAge", "선수 나이 : " + age);
    }
}
