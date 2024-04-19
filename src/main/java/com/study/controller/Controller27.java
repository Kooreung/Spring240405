package com.study.controller;

import com.study.domain.MyBean255CustomerList;
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
        model.addAttribute("endPageNumber", endPageNumber);
        model.addAttribute("beginPageNumber", beginPageNumber);
        // endPageNUmber 는 최종 페이지를 넘을 수 없다.
        endPageNumber = Math.min(endPageNumber, lastPageNumber);

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
}
