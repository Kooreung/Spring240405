package com.study.controller;

import com.study.domain.MyBean331;
import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import com.study.mapper.Mapper04;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main33")
@RequiredArgsConstructor
public class Controller33 {
    private final Mapper04 mapper04;

    @GetMapping("sub1")
    public void method1(){
        List<MyBean331> obj = mapper04.select1();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub2")
    public void method2(){
        List<MyBean332> obj = mapper04.select2();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub3")
    public void method3(){
        List<MyBean333> obj = mapper04.select3();
        obj.forEach(System.out::println);
    }
}
