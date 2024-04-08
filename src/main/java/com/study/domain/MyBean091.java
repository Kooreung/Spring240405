package com.study.domain;

public class MyBean091 {
    // 기본생성자 : 안만들면 있는 것

    // getter, setter 의 method 명으로부터 property 명이 결정
    // get, set 을 제거하고 앞글자를 소문자로 바꾼 것
    // 따라서 name, age 속성(property) 가 있음
    public String getName() {
        return "흥민";
    }

    public Integer getAge() {
        return 30;
    }
}
