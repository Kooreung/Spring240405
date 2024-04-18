package com.study.controller;

import com.study.domain.MyBean255Category;
import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255OrderList;
import com.study.domain.MyBean255ProductsList;
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

    @GetMapping("sub2")
    public String sub2(String[]country, Model model) throws Exception {
        Connection conn = dataSource.getConnection();

        if (country != null && country.length > 0) {
            String questionMarks = "";
            for (int i = 0; i < country.length; i++) {
                questionMarks = questionMarks + "?";
                if (i != country.length - 1) {
                    questionMarks = questionMarks + ",";
                }
            }
            String customerSql = STR."""
                SELECT *
                FROM Customers
                WHERE Country IN (\{questionMarks})
                """;

            var customerList = new ArrayList<MyBean255CustomerList>();
            PreparedStatement pstmt = conn.prepareStatement(customerSql);
            for (int i = 0; i < country.length; i++) {
                pstmt.setString((i + 1), country[i]);
            }
            ResultSet resultSet = pstmt.executeQuery();
            try (pstmt; resultSet) {

                while (resultSet.next()) {
                    MyBean255CustomerList data = new MyBean255CustomerList();
                    data.setId(resultSet.getInt(1));
                    data.setName(resultSet.getString(2));
                    data.setContactName(resultSet.getString(3));
                    data.setAddress(resultSet.getString(4));
                    data.setCity(resultSet.getString(5));
                    data.setPostalCode(resultSet.getString(6));
                    data.setCountry(resultSet.getString(7));
                    customerList.add(data);
                }
                model.addAttribute("customerList", customerList);
            }
        }

        String sql = """
                SELECT DISTINCT Country
                FROM Customers
                """;

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        var countryList = new ArrayList<String>();

        try (stmt; rs;){
            while (rs.next()) {
                countryList.add(rs.getString(1));
            }
            model.addAttribute("countryList", countryList);
        }

        return "main26/sub2CustomerList";
    }

    // todo : 상품 조회 결과가 카테고리, 가격 순으로
    @GetMapping("sub3")
    public String method3(@RequestParam(value="category", required = false) String[] categoryArr,
                          Model model) throws Exception {
        Connection conn = dataSource.getConnection();

        if (categoryArr != null && categoryArr.length > 0) {
            String questionMarks = "";
            for (int i = 0; i < categoryArr.length; i++) {
                questionMarks += "?";
                if (i != categoryArr.length - 1) {
                    questionMarks += ",";
                }
            }
            String productSql = STR."""
                    SELECT *
                    FROM Products
                    WHERE CategoryId IN (\{questionMarks})
                    ORDER BY CategoryId, Price
                    """;

            var productList = new ArrayList<MyBean255ProductsList>();
            PreparedStatement pstmt = conn.prepareStatement(productSql);
            for (int i = 0; i < categoryArr.length; i++) {
                pstmt.setString((i + 1), categoryArr[i]);
            }
            ResultSet resultSet = pstmt.executeQuery();
            try (pstmt; resultSet) {
                while (resultSet.next()) {
                    MyBean255ProductsList data = new MyBean255ProductsList();
                    data.setId(resultSet.getInt(1));
                    data.setName(resultSet.getString(2));
                    data.setSupplierId(resultSet.getString(3));
                    data.setCategoryId(resultSet.getString(4));
                    data.setUnit(resultSet.getString(5));
                    data.setPrice(resultSet.getDouble(6));
                    productList.add(data);
                }
                model.addAttribute("prevCategorySelect",categoryArr);
                model.addAttribute("products", productList);
            }
        }

        String Sql = "SELECT * FROM Categories";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(Sql);
        var categoryList = new ArrayList<MyBean255Category>();
        try (rs; stmt; conn;) {
            while (rs.next()) {
                MyBean255Category category = new MyBean255Category();
                category.setId(rs.getInt(1));
                category.setName(rs.getString(2));

                categoryList.add(category);
            }
            model.addAttribute("categoryList", categoryList);
        }

        return "main26/sub3ProductList";
    }
}
