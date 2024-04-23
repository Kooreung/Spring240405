package com.study.controller;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import com.study.domain.MyBean255ProductsList;
import com.study.mapper.Mapper02;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

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

    @GetMapping("sub6")
    public void method6() {
        MyBean255EmployeeList e = mapper.selectOneEmployee2(5);
        System.out.println("e = " + e);
    }

    // /main31/sub7?id=4
    @GetMapping("sub7")
    public void method7(Integer id) {
        MyBean255EmployeeList e = mapper.selectOneEmployee2(id);
        System.out.println("e = " + e);
    }

    // /main31/sub8?id=9
    @GetMapping("sub8")
    public void method8(Integer id) {
        MyBean255CustomerList c = mapper.selectOneCustomer4(id);
        System.out.println("c = " + c);
    }

    @GetMapping("sub9")
    public void method9() {
        List<MyBean255CustomerList> customerLists = mapper.selectAllCustomer1();
        System.out.println("customers = " + customerLists.size());
    }

    @GetMapping("sub10")
    public void method10() {
        List<MyBean255EmployeeList> employeeLists = mapper.selectAllEmployee1();
        employeeLists.forEach(System.out::println);
    }

    @GetMapping("sub11")
    public void method11() {
        List<MyBean255CustomerList> list = mapper.selectCustomersByCountry("usa","uk");
        list.forEach(System.out::println);
    }

    // /main31/sub12?min=5&max=55
    @GetMapping("sub12")
    public void method12(Double min, Double max) {
        List<MyBean255ProductsList> list = mapper.selectProductsByPrice(min,max);
        list.forEach(System.out::println);
    }
}
