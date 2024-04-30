package com.study.service;

import com.study.domain.MyBean255EmployeeList;
import com.study.mapper.Mapper08;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(rollbackFor = Exception.class)
public class Service04 {
    private final Mapper08 mapper;

    public void action1() {
        mapper.query1();
    }

    public void action2() {
        MyBean255EmployeeList e = new MyBean255EmployeeList();
        e.setLastName("흥민");
        mapper.query2(e);
    }

    public void action3() {
        MyBean255EmployeeList e = new MyBean255EmployeeList();
        e.setFirstName("kim");
        mapper.query3(e);
    }

    public void action4() {
        MyBean255EmployeeList e = new MyBean255EmployeeList();
//        e.setFirstName("kim");
        e.setFirstName("lee");
        mapper.query4(e);
    }

    public void action5() {
        MyBean255EmployeeList e = new MyBean255EmployeeList();

//        e.setLastName("son");
        e.setFirstName("hm");
        mapper.query5(e);
    }

    public void action6(String keyword) {

        List<MyBean255EmployeeList> list = mapper.query6(keyword);
        list.forEach(System.out::println);
    }

    public void action7() {
        mapper.query7();
    }
}
