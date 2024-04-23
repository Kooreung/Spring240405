package com.study.controller;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import com.study.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {
    private final Mapper03 mapper;

    @RequestMapping("sub1")
    public void method1(){
        int rowCount = mapper.deleteCustomer();
        System.out.println(rowCount + "명 고객 삭제 됨");
    }

    // /main32/sub2?cid=5
    @RequestMapping("sub2")
    public void method2(Integer cid){
        int rowCount = mapper.deleteCustomerById(cid);
        System.out.println(rowCount + "명의 고객 삭제 됨");
    }

    // /main32/sub3?eid=5
    @RequestMapping("sub3")
    public void method3(Integer eid){
        int rowCount = mapper.deleteEmployeeById(eid);
        System.out.println(rowCount + "명의 고객 삭제 됨");
    }

    // name=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
    // /main32/sub4?name=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
    @GetMapping("sub4")
    public void method4(MyBean255CustomerList customer) {
        mapper.insertCustomer(customer);
    }

    // todo : 직원 입력 코드 작성해보기
    @GetMapping("sub5")
    public void method5() {
        // form이 있는 view 포워딩

    }

    @PostMapping("sub5")
    public String method6(MyBean255EmployeeList employee, RedirectAttributes rttr) {
        int rows = mapper.insertEmployee(employee);

        if (rows > 0) {
            rttr.addFlashAttribute("message", rows + "명 직원이 입력되었습니다");
        } else {
            rttr.addFlashAttribute("message", "입력되지 않았습니다.");
        }
        return "redirect:/main32/sub5";
    }
}
