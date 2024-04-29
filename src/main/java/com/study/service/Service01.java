package com.study.service;

import com.study.mapper.Mapper05;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

// 비즈니스 로직을 처리하는 객체임을 알려주는 어노테이션
// Component 와 같은 기능이지만 Service 를 쓰면 됨
@Service
@RequiredArgsConstructor
public class Service01 {

    private final Mapper05 mapper05;

    public List<Mapper05.EmployeeIncome> employeeIncomeList(Integer year, Integer month) {
        String from = "%d-%02d-01".formatted(year, month);
        String to = "%d-%02d-31".formatted(year, month);
        return mapper05.selectIncomeList(from, to);
    }

    public List<Mapper05.CustomerPayment> customerPaymentList(Integer year, Integer month) {
        String from = "%d-%02d-01".formatted(year, month);
        String to = "%d-%02d-31".formatted(year, month);
        return mapper05.selectCustomerPaymentList(from, to);
    }
}
