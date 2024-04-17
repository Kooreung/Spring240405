package com.study.controller;

import com.study.domain.MyBean251;
import com.study.domain.MyBean252;
import com.study.domain.MyBean253;
import com.study.domain.MyBean255Products;
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
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "name", required = false) String searchName, Model model) throws SQLException {
        var list = new ArrayList<MyBean251>();

        String sql = STR."""
                SELECT *
                FROM Employees
                WHERE LastName = '\{searchName}'
                """;

        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (rs; stmt; con) {
            while (rs.next()) {
                String id = rs.getString(1);
                String lastName = rs.getString(2);
                String firstName = rs.getString(3);
                String birthDate = rs.getString(4);
                String photo = rs.getString(5);
                String notes = rs.getString(6);

                MyBean251 obj
                        = new MyBean251(id,lastName,firstName,birthDate,photo,notes);
                list.add(obj);

            }
        }
        model.addAttribute("employees", list);
    }

    @GetMapping("sub2")
        public void method2(@RequestParam(value = "name" , required = false) String search,
                            Model model) throws Exception {
        var list = new ArrayList<MyBean252>();
        String sql = STR."""
                SELECT *
                FROM Products
                WHERE ProductName = "\{search}"
                """;

        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            int id = rs.getInt(1);
            String name = rs.getString(2);
            String unit = rs.getString(5);
            double price = rs.getDouble(6);

            MyBean252 obj = new MyBean252(id, name, unit, price);
            list.add(obj);
        }
        model.addAttribute("products", list);
    }

    @GetMapping("sub3")
    public void method3(String search, Model model) throws Exception {
        var list = new ArrayList<MyBean252>();

        String sql = """
                SELECT * 
                FROM Products
                WHERE ProductName = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        // 첫 번째 parameter : 물음표 위치
        // 두 번째 parameter : 넣을 값
        pstmt.setString(1, search);

        ResultSet rs = pstmt.executeQuery();
        while(rs.next()) {
            MyBean252 row = new MyBean252(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(5),
                    rs.getDouble(6));

            list.add(row);
        }
        model.addAttribute("products", list);
    }

    @GetMapping("sub4")
    public void method4(String searchName, Model model) throws Exception {
        var list = new ArrayList<MyBean253>();

        String sql = """
                SELECT * 
                FROM Customers
                WHERE CustomerName = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,searchName);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            MyBean253 row = new MyBean253(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(7)
            );

            list.add(row);
        }
        model.addAttribute("customers", list);
    }

    @GetMapping("sub5")
    public String method5(String search, Model model) throws Exception {
        var list = new ArrayList<MyBean253>();
        String sql = """
                SELECT * FROM Customers
                WHERE CustomerName LIKE ?
                """;
        String keyword = "%" + search + "%";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,keyword);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            MyBean253 row = new MyBean253(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(7)
            );

            list.add(row);
        }
        model.addAttribute("customerList", list);
        model.addAttribute("prevSearch", search);

        return "main25/sub4CustomerList";
    }

    @GetMapping("sub6")
    public String method6(String search, Model model) throws Exception {
        var list = new ArrayList<MyBean255Products>();
        String sql = """
                SELECT *
                FROM Products
                WHERE ProductName LIKE ?
                """;
        String keyword = "%" + search + "%";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,keyword);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            int id = rs.getInt(1);
            String name = rs.getString(2);
            String supplierId = rs.getString(3);
            String CategoryId = rs.getString(4);
            String Unit = rs.getString(5);
            double price = rs.getDouble(6);

            MyBean255Products obj = new MyBean255Products();
            obj.setId(id);
            obj.setName(name);
            obj.setSupplierId(supplierId);
            obj.setCategoryId(CategoryId);
            obj.setUnit(Unit);
            obj.setPrice(price);

            list.add(obj);
        }
        model.addAttribute("products", list);
        model.addAttribute("prevSearch", search);

        return "main25/sub6Products";
    }

}
