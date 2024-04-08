package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;

@Controller
@RequestMapping("main6")
public class Controller06 {

    @RequestMapping("sub1")
    public void method1() {
        System.out.println("Controller06.method1");
    }

    // /main6/sub2?abc=son&qwe=56
    // /main6/sub2
    // /main6/sub2?abc=lee
    // /main6/sub2?qwe=44
    @RequestMapping("sub2")
    public void method2(@RequestParam(value = "abc", required = false) String param1,
                        @RequestParam(value = "qwe", required = false) Integer param2) {
        System.out.println("Controller06.method2");
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
    }

    // /main6/sub3?name=kim&age=44
    // /main6/sub3?name=lee
    // /main6/sub3?age=55
    @RequestMapping("sub3")
    public void method3(@RequestParam(value = "name", required = false) String param1,
                        @RequestParam(value = "age", required = false) Integer param2) {
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
    }

    // /main6/sub3?name=kim&age=44
    // /main6/sub3?name=lee
    // /main6/sub3?age=55
    @RequestMapping("sub4")
    public void method4(@RequestParam(required = false) String name,
                        @RequestParam(required = false) Integer age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    // /main6/sub5?address=shinchon&city=seoul
    // /main6/sub5?city=busan
    // /main6/sub5?address=강남
    @RequestMapping("sub5")
    public void method5(@RequestParam(required = false) String address,
                        @RequestParam(required = false) String city) {
        System.out.println("address = " + address);
        System.out.println("city = " + city);
    }

    // /main6/sub6?address=강남&city=서울
    // /main6/sub6?address=강남
    // /main6/sub6?city=서울
    @RequestMapping("sub6")
    public void method6(String address, // requierd 는 false
                        String city) {
        System.out.println("address = " + address);
        System.out.println("city = " + city);
    }

    // /main6/sub7?name=흥민&age=77
    // /main6/sub7?age=66
    // /main6/sub7?name=강인
    // /main6/sub7
    //메소드 argument 타입이 기본타입(wrapper 포함), String 이면
    // @RequestParam 으로 간주
    @RequestMapping("sub7")
    public void method7(String name, String age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    // /main6/sub8?name=흥민&address=런던&address=서울
    @RequestMapping("sub8")
    public void method8(String name, String[] address) {
        System.out.println("name = " + name);
        System.out.println("address = " + Arrays.toString(address));
    }

    // /main6/sub9?age=33
    // /main6/sub9?age=44&age=55
    // /main6/sub9?city=서울
    // /main6/sub9?city=서울&city=부산
    @RequestMapping("sub9")
    public void method9(Integer[] age, String[] city) {
        System.out.println("age = " + Arrays.toString(age));
        System.out.println("city = " + Arrays.toString(city));
    }
}
