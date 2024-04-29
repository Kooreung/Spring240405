package com.study.controller;

import com.study.mapper.Mapper05;
import com.study.service.Service01;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main34")
@RequiredArgsConstructor
public class Controller34 {
    // private final Mapper05 mapper;
    private final Service01 service;

    // 해당 월의 직원 별 매출액 조회
    // 예시 : /main34/sub1?year=1997&month=7
    @GetMapping("sub1")
    public void sub1(Integer year, Integer month, Model model) {

        List<Mapper05.EmployeeIncome> value = service.employeeIncomeList(year, month);
        model.addAttribute("incomeList", value);
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }

    // 해당 월의 고객 별 구매금액 조회 (구매금액 높은 순)
    // service01, mapper05 에 메소드만 추가하여 사용
    // 필요하면 dto (java bean) 도 작성
    // 예시 : /main/sub2?year=1996&month=7
    @GetMapping("sub2")
    public void sub2(Integer year, Integer month, Model model) {
        List<Mapper05.CustomerPayment> value = service.customerPaymentList(year, month);
        model.addAttribute("paymentList", value);
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }

}
