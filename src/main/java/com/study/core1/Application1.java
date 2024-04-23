package com.study.core1;

import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application1 {
    public static void main(String[] args) {
        System.out.println("main method");

        Controller1 c = new Controller1();
        Dao1 dao = new Dao1();
        c.setDao(new Dao1());
        c.action();
    }
}

class Dao1 {
    public void select() {
        System.out.println("select datas...");
    }
}

class Controller1 {
    private Dao1 dao; // 콘트롤러가 의존하는 필드, dependency
    public void setDao(Dao1 dao) {
        this.dao = dao;
    }

    public void action() {
        dao.select();
    }
}