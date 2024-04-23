package com.study.core3;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application3 {
    public static void main(String[] args) {
        BeanFactory beanFactory = SpringApplication.run(Application3.class);
        Dao3 bean1 = beanFactory.getBean(Dao3.class);
        Controller3 bean2 = beanFactory.getBean(Controller3.class);

        System.out.println(bean1);
        System.out.println(bean2);

        System.out.println(bean2.getDao());
    }
}

@Component
class Dao3 {
}

@Component
@Getter
@Setter
class Controller3 {

    // Dependency Injection (DI)
    @Autowired
    private Dao3 dao;
}