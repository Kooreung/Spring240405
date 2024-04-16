package com.study.controller;

import com.study.domain.MyBean241;
import com.study.domain.MyBean242;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main24")
public class Connection24 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void sub1(Model model) throws Exception {
        var list = new ArrayList<MyBean241>();
        String sql = """
                SELECT FirstName, LastName
                FROM Employees
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (conn; stmt; rs) {
            while (rs.next()) {
                MyBean241 bean = new MyBean241();
                bean.setFirstName(rs.getString(1));
                bean.setLastName(rs.getString(2));
                list.add(bean);
            }
        }
        model.addAttribute("employees", list);
    }

    @GetMapping("sub2")
    public void sub2(Model model) throws Exception {
        var list = new ArrayList<MyBean242>();

        String sql = """
                SELECT CustomerName, City, Country
                FROM Customers
                """;
        Connection con = dataSource.getConnection();
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        try (con; statement; resultSet) {
            while(resultSet.next()) {
                String name = resultSet.getString(1);
                String city = resultSet.getString(2);
                String country = resultSet.getString(3);

                MyBean242 data = new MyBean242();
                data.setCustomerName(name);
                data.setCity(city);
                data.setCountry(country);
                list.add(data);
            }
        }
        model.addAttribute("customers", list);
    }
}
