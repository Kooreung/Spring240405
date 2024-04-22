package com.study.core1;

import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application1 {
    public static void main(String[] args) {
        System.out.println("main method");

        Controller c = new Controller();
        Dao dao = new Dao();
        c.setDao(new Dao());
        c.action();
    }
}

class Dao {
    public void select() {
        System.out.println("select datas...");
    }
}

class Controller {
    private Dao dao; // 콘트롤러가 의존하는 필드, dependency
    public void setDao(Dao dao) {
        this.dao = dao;
    }

    public void action() {
        dao.select();
    }
}