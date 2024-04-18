package com.study.controller;

import com.study.domain.MyBean255OrderList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@Controller
@RequestMapping("main26")
public class Controller26 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String sub1(String start, String end, Model model) throws Exception {
        var list = new ArrayList<MyBean255OrderList>();

        String sql = """
                SELECT *
                FROM Orders
                WHERE OrderDate BETWEEN ? AND ?
                """;

        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, start);
        pstmt.setString(2, end);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            MyBean255OrderList obj = new MyBean255OrderList();
            obj.setId(rs.getInt(1));
            obj.setCustomerId(rs.getString(2));
            obj.setEmployeeId(rs.getString(3));
            obj.setOrderDate(rs.getString(4));
            obj.setShipperId(rs.getString(5));

            list.add(obj);
        }

        model.addAttribute("orderList", list);
        model.addAttribute("start", start);
        model.addAttribute("end", end);

        return "main26/sub1OrderList";
    }
}
