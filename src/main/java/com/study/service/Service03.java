package com.study.service;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import com.study.mapper.Mapper07;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = Exception.class)
@RequiredArgsConstructor
public class Service03 {
    private final Mapper07 mapper;

    public void insertData1() {
        MyBean255EmployeeList e = new MyBean255EmployeeList();
        e.setLastName("박");
        e.setFirstName("지성");
        mapper.insert(e);

        System.out.println(e.getId());
    }

    public void insertData2() {
        MyBean255CustomerList c = new MyBean255CustomerList();
        c.setName("김답답");
        c.setCountry("Korea");
        c.setCity("Seoul");
        mapper.insert2(c);

        System.out.println(c.getId());
    }
}
