package com.study.core;
// 객체를 만들고 관리하는 여러가지 방법

import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application5 {
    public static void main(String[] args) {
        BeanFactory context =
        SpringApplication.run(Application5.class, args);
        MyClass51 b1 = context.getBean(MyClass51.class);
        System.out.println("b1 = " + b1);
        MyClass52 b2 = context.getBean(MyClass52.class);
        System.out.println("b2 = " + b2);
        Object b3 = context.getBean("myClass51");
        System.out.println("b3 = " + b3);
        Object b4 = context.getBean("mybean1");
        // 스프링 빈 이름으로 불러오기 가능
        System.out.println("b4 = " + b4);
    }
}

// bean 팩토리에서 빈 만들 때 52 는 지정 된 이름으로 생성
// 별도로 이름을 주지 않으면 class 명을 lowerCamelCase 형태로 사용

@Component // 스프링 빈 생성
class MyClass51 {

}

@Component("mybean1") // 이름 지어주기 가능
class MyClass52 { }