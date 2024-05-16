package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.Arrays;

@Controller
public class Controller40 {

    @GetMapping("/api/someurl")
    public void method1() {
        System.out.println("controller40.method1");
    }

    @PostMapping("/api/someurl")
    public void method2() {
        System.out.println("controller40.method2");
    }

    @GetMapping("/api/someurl2")
    public void method3() {
        System.out.println("controller40.method3");
    }

    @PostMapping("/api/someurl2")
    public void method4() {
        System.out.println("controller40.method4");
    }

    @GetMapping("/api/someurl3")
    public void method5(@RequestParam("id") Integer id,
                        @RequestParam("name") String name,
                        @RequestParam("email") String email) {
        System.out.println("id = " + id);
        System.out.println("name = " + name);
        System.out.println("email = " + email);
    }

    @PostMapping("/api/someurl3")
    public void method6(@RequestParam("id") Integer id,
                        @RequestParam("city") String city,
                        @RequestParam("country") String country) {
        System.out.println("id = " + id);
        System.out.println("city = " + city);
        System.out.println("country = " + country);
    }

    @GetMapping("/api/someurl4")
    public void method7(@RequestParam("id") Integer id,
                        @RequestParam("name") String name,
                        @RequestParam("email") String email,
                        @RequestParam("birthDate") LocalDate birthDate) {
        System.out.println("id = " + id);
        System.out.println("name = " + name);
        System.out.println("email = " + email);
        System.out.println("birthDate = " + birthDate);
    }

    @PostMapping("/api/someurl4")
    public void method8(@RequestParam("foods") String[] foods,
                        @RequestParam("item") String item) {
        System.out.println(Arrays.toString((foods)));
        System.out.println("item = " + item);
    }
}
