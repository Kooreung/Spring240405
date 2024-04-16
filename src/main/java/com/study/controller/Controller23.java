package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main23")
public class Controller23 {
    @RequestMapping("sub1")
    public void sub1(Model model) throws SQLException {
        var list = new ArrayList<String>();

        String sql = """
                SELECT FirstName FROM Employees
                """;
        String url = "jdbc:mariadb://localhost:3306/w3schools";
        String user = "root";
        String password = "1234";
        Connection con = DriverManager.getConnection(url, user, password);
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        try (resultSet; statement; con) {
            while (resultSet.next()) { // 각 행 탐색
                String name = resultSet.getString(1); // 첫번째 Column 값 획득
                list.add(name);
            }
        }
        model.addAttribute("nameList", list);
    }
}
