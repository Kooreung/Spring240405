package com.study.controller;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import com.study.mapper.Mapper02;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main31")
@RequiredArgsConstructor
public class Controller31 {

    private final Mapper02 mapper;

    @GetMapping("sub1")
    public void method1() {
        String now = mapper.selectNow();
        System.out.println("now = " + now);
    }

    @GetMapping("sub2")
    public String method2() {
        MyBean255CustomerList customer = mapper.selectOneCustomer();
        System.out.println("customer = " + customer);
        return null;
    }

    @GetMapping("sub3")
    public void method3() {
        MyBean255CustomerList c = mapper.selectOneCustomer2();
        System.out.println("c = " + c);
    }

    @GetMapping("sub4")
    public void method4() {
        MyBean255CustomerList c = mapper.selectOneCustomer3();
        System.out.println("c = " + c);
    }

    @GetMapping("sub5")
    public void method5() {
        MyBean255EmployeeList e = mapper.selectOneEmployee1();
        System.out.println("e = " + e);
    }
}
