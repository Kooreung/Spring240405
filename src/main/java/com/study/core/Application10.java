package com.study.core;

import com.study.domain.MyBean101;
import com.study.domain.MyBean102;
import lombok.Getter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application10 {
    public static void main(String[] args) {
        BeanFactory context = SpringApplication.run(Application10.class, args);
        MyClass101 bean = context.getBean(MyClass101.class);
        MyClass102 field = bean.getField();
        System.out.println("field = " + field); // null 이 아니게
    }
}

//@Configuration
//class MyConfiguration10 {
//    @Bean
//    public MyBean101 myBean101() {
//        return new MyBean101();
//    }
//
//    @Bean
//    public MyBean102 myBean102() {
//        return new MyBean102();
//    }
//}

@Component
@Getter
class MyClass101 {
    @Autowired
    private MyClass102 field;
}

@Component
class MyClass102 {}