package com.study.core;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application12 {
    public static void main(String[] args) {
        BeanFactory bf = SpringApplication.run(Application12.class, args);
        MyClass122 bean = bf.getBean(MyClass122.class);
        MyClass121 field = bean.getField();
        System.out.println("field = " + field);
    }
}

@Component
class MyClass121 {}

@Component
@Getter
@RequiredArgsConstructor
class MyClass122 {
    private final MyClass121 field;
    // defendency 로 final 을 주게 되면 field 값을 바로 명시
    // 또는 생성자를 통해 주입
    // final 이면 꼭 생성자를 만들어야 한다
    // = 생성자가 하나 뿐이다
    // = Autowired 가 있는 거나 마찬가지다
    // = 그러므로 생략이 가능하다
    // + 생성자 생성 대신 Lombok Annotation 을 통해 생성자 생성
    // = RequiredArgsConstructor 를 사용
}