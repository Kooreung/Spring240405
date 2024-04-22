package com.study.controller;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;

@Controller
@RequestMapping("main28")
public class Controller28 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    private void sub1(){

    }
    @PostMapping("sub1")
    private String sub2(MyBean255CustomerList customer, RedirectAttributes rttr) throws Exception {
        String sql = """
                INSERT INTO Customers
                (CustomerName, ContactName, Address, City, PostalCode, Country)
                VALUES (?, ?, ?, ?, ?, ?)
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);

        try (pstmt; conn) {
            pstmt.setString(1, customer.getName());
            pstmt.setString(2, customer.getContactName());
            pstmt.setString(3, customer.getAddress());
            pstmt.setString(4, customer.getCity());
            pstmt.setString(5, customer.getPostalCode());
            pstmt.setString(6, customer.getCountry());

            int rowCount = pstmt.executeUpdate();
            if (rowCount > 0) {
                rttr.addFlashAttribute("message", "새 고객이 등록되었습니다.");
            }
        }

        return "redirect:/main28/sub1";
    }

    @GetMapping("sub3")
    private void sub3(){
    }

    @PostMapping("sub3")
    private String sub4(MyBean255EmployeeList employeeList, RedirectAttributes rttr) throws Exception {
        String sql = """
                INSERT INTO Employees
                (LastName, FirstName, BirthDate, Photo, Notes)
                VALUES (?, ?, ?, ?, ?)
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);

        try (conn; pstmt;) {
            pstmt.setString(1, employeeList.getLastName());
            pstmt.setString(2, employeeList.getFirstName());
            pstmt.setString(3, employeeList.getBirthDate());
            pstmt.setString(4, employeeList.getPhoto());
            pstmt.setString(5, employeeList.getNotes());

            int rowCount = pstmt.executeUpdate();
            if (rowCount > 0) {
                rttr.addFlashAttribute("message","새 직원이 등록되었습니다.");
            } else {
                rttr.addFlashAttribute("message","등록 실패");
            }
        }

        return "redirect:/main28/sub3";
    }
}
