package com.study.core;

import lombok.Getter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

/*
@SpringBootApplication
메인메소드가 실행되고 있는 패키지와 하위패키지를 모두 스캔해서
(컴포넌트를 확인해서) 빈을 만든다
스프링이 만든 거라서 스프링 빈이라고 한다.
스프링 빈은 싱글톤 패턴(객체를 하나만 생성) 으로 구성되어있다.
그래서 같은 참조값을 가지고 있다.
 */
@SpringBootApplication
public class Application4 {
    public static void main(String[] args) {
        BeanFactory factory =
        SpringApplication.run(Application4.class, args);

        MyClass41 b1 = factory.getBean(MyClass41.class);
        MyClass42 b2 = factory.getBean(MyClass42.class);

        System.out.println("b1 = " + b1);
        System.out.println("b2 = " + b2);

        MyClass41 obj = b2.getObj();
        System.out.println("obj = " + obj);
        // 싱글톤이라 위 b1 과 같은 참조값 사용
    }
}

@Component
class MyClass41 {}

@Component
@Getter
class MyClass42 {
    // Dependency Injection (IOC 개념의 일부분)
    // dependency 를 넣어 준 것
    @Autowired // 설명 다시 찾아봐야 함
    private MyClass41 obj;
    // 42 는 41 에 dependency (의존) 중
}