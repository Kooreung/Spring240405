package com.study.controller;

import com.study.domain.MyBean331;
import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import com.study.mapper.Mapper04;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.time.LocalDateTime;
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

    @GetMapping("sub4")
    public void method4(){
        mapper04.insert1("hello world","54321","123.456","1999-10-19","2000-10-20 20:10:20");
    }

    @GetMapping("sub5")
    public void method5(){
        String strVal = "hello mybatis";
        Integer intVal = 7890;
        Double doubleVal = 3.14;
        LocalDate dateVal = LocalDate.parse("1999-10-20");
        LocalDateTime dateTimeVal = LocalDateTime.parse("2000-10-20T20:10:20");
        mapper04.insert2(strVal, intVal, doubleVal, dateVal, dateTimeVal);
    }

    @GetMapping("sub6")
    public void method6(){
        String titleVal = "패션왕";
        String nameVal = "기안84";
        Integer ageVal = 30;
        Double priceVal = 21000.50;
        LocalDate dateVal = LocalDate.parse("2000-01-02");
        LocalDateTime dateTimeVal = LocalDateTime.parse("1984-01-02T20:10:20");
        mapper04.insert3(titleVal, nameVal, ageVal, priceVal, dateVal, dateTimeVal);
    }

    @GetMapping("sub7")
    public void method7(){
        MyBean332 obj = new MyBean332();
        obj.setStringCol("hello 😊");
        obj.setIntCol(7890);
        obj.setDecCol(99.88);
        obj.setDateCol(LocalDate.parse("1999-10-20"));
        obj.setDateTimeCol(LocalDateTime.parse("2000-10-20T20:10:20"));

        mapper04.insert4(obj);
    }

    @GetMapping("sub8")
    public void method8(){
        MyBean333 obj = new MyBean333();
        obj.setTitle("토끼와 거북이");
        obj.setName("김갑갑");
        obj.setAge(20);
        obj.setPrice(21000.50);
        obj.setPublished(LocalDate.parse("1989-05-05"));
        obj.setInserted(LocalDateTime.parse("1999-05-05T09:09:09"));

        mapper04.insert5(obj);
    }

    @GetMapping("sub9")
    public void select9(Model model) {
        List<MyBean332> list = mapper04.select2();
        model.addAttribute("datas", list);
    }

    @PostMapping("sub9")
    public void insert9(String str,
                        String intValue,
                        String realValue,
                        String dataValue,
                        String dataTimeValue){
        mapper04.insert1(str,intValue,realValue,dataValue,dataTimeValue);
    }

    @GetMapping("sub10")
    public String select10(Model model) {
        List<MyBean332> list = mapper04.select2();
        model.addAttribute("datas",list);

        return "/main33/sub9";
    }

    @PostMapping("sub10")
    public String insert10(String str,
                           Integer intValue,
                           Double realValue,
                           LocalDate dateValue,
                           LocalDateTime dateTimeValue) {
        mapper04.insert2(str, intValue, realValue, dateValue, dateTimeValue);
        return "redirect:/main33/sub10";
    }

    @GetMapping("sub11")
    public String select11(Model model) {
        List<MyBean332> list = mapper04.select2();
        model.addAttribute("datas",list);

        return "/main33/sub11";
    }

    @PostMapping("sub11")
    public String insert11(MyBean332 data) {
        mapper04.insert4(data);
        return "redirect:/main33/sub11";
    }

    @GetMapping("sub12")
    public String select12(Model model) {
        List<MyBean333> list = mapper04.select3();
        model.addAttribute("datas",list);

        return "/main33/sub12";
    }

    @PostMapping("sub12")
    public String insert12(MyBean333 data) {
        mapper04.insert5(data);

        return "redirect:/main33/sub12";
    }
}
