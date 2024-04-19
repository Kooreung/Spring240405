package com.study.controller;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main27")
public class Controller27 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String sub1(@RequestParam(defaultValue = "1") Integer page, Model model) throws Exception {

        int offset = (page - 1) * 10;
        String sql = """
                SELECT *
                FROM Customers
                ORDER BY CustomerID
                LIMIT ?, 10
                """;

        var list = new ArrayList<MyBean255CustomerList>();
        Connection con = dataSource.getConnection();

        // 페이지 정보 산출
        // 1. 총 레코드 수 조회
        String countSql = "SELECT COUNT(*) FROM Customers";
        Statement stmt = con.createStatement();
        ResultSet rs1 = stmt.executeQuery(countSql);
        int total = 0;
        try (rs1; stmt;) {
            while (rs1.next()) {
                total = rs1.getInt(1);
            }
        }
        // 2. 마지막 페이지 번호 = ?
        int lastPageNumber = (total - 1) / 10 + 1;
        model.addAttribute("lastPageNumber", lastPageNumber);
        // 3. 페이지 링크의 begin 과 end 산출
        int endPageNumber = ((page - 1) / 10 + 1) * 10;
        int beginPageNumber = endPageNumber - 9;
        // endPageNUmber 는 최종 페이지를 넘을 수 없다.
        endPageNumber = Math.min(endPageNumber, lastPageNumber);
        model.addAttribute("endPageNumber", endPageNumber);
        model.addAttribute("beginPageNumber", beginPageNumber);

        // 4. 다음 버튼 클릭시 이동해야 하는 nextPageNumber 산출
        int nextPageNumber = beginPageNumber + 10;
        if(nextPageNumber <= lastPageNumber){
            model.addAttribute("nextPageNumber", nextPageNumber);
        }
        // 5. 이전 버튼 클릭시 이동해야 하는 prevPageNumber 산출
        int previousPageNumber = beginPageNumber - 10;
        if(previousPageNumber > 0){
            model.addAttribute("previousPageNumber", previousPageNumber);
        }

        // 6. 현재페이지 산출
        model.addAttribute("currentPage", page);

        // 고객 레코드 조회
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, offset);
        ResultSet rs = ps.executeQuery();

        try (rs; ps; con) {
            while(rs.next()) {
                MyBean255CustomerList customer = new MyBean255CustomerList();

                customer.setId(rs.getInt(1));
                customer.setName(rs.getString(2));
                customer.setContactName(rs.getString(3));
                customer.setAddress(rs.getString(4));
                customer.setCity(rs.getString(5));
                customer.setPostalCode(rs.getString(6));
                customer.setCountry(rs.getString(7));

                list.add(customer);
            }

            model.addAttribute("customerList", list);
        }

        return "main27/sub1";
    }

    @GetMapping("sub2")
    public String method2(@RequestParam(defaultValue = "1") Integer page, Model model) throws Exception {
        Connection con = dataSource.getConnection();

        String countSql = "SELECT COUNT(*) FROM Employees";
        Statement stmt = con.createStatement();
        ResultSet countRs = stmt.executeQuery(countSql);
        int total = 0;
        try (stmt; countRs;) {
            while (countRs.next()) {
                total = countRs.getInt(1);
            }
        }
        int lastPageNumber = (total - 1) / 10 + 1;
        model.addAttribute("lastPageNumber", lastPageNumber);

        int endPageNumber = ((page - 1) / 10 + 1) * 10;
        int beginPageNumber = endPageNumber - 9;
        endPageNumber = Math.min(endPageNumber, lastPageNumber);

        model.addAttribute("endPageNumber", endPageNumber);
        model.addAttribute("beginPageNumber", beginPageNumber);

        int previousPageNumber = beginPageNumber - 10;
        if(previousPageNumber > 0){
            model.addAttribute("previousPageNumber", previousPageNumber);
        }

        int nextPageNumber = beginPageNumber + 10;
        if(nextPageNumber <= lastPageNumber){
            model.addAttribute("nextPageNumber", nextPageNumber);
        }

        model.addAttribute("currentPage", page);

        String sql= """
                SELECT *
                FROM Employees
                ORDER BY EmployeeID
                LIMIT ?, 10;
                """;

        int offset = (page - 1) * 10;
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, offset);
        ResultSet rs = ps.executeQuery();
        var list = new ArrayList<MyBean255EmployeeList>();
        try (rs; ps; con) {
            while(rs.next()) {
                MyBean255EmployeeList employeeList = new MyBean255EmployeeList();
                employeeList.setId(rs.getInt(1));
                employeeList.setLastName(rs.getString(2));
                employeeList.setFirstName(rs.getString(3));
                employeeList.setBirthDate(rs.getString(4));
                employeeList.setPhoto(rs.getString(5));
                employeeList.setNotes(rs.getString(6));

                list.add(employeeList);
            }
        }
        model.addAttribute("employeeList", list);

        return "main27/sub2";
    }
}
