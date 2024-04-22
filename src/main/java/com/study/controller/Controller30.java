package com.study.controller;

import com.study.domain.MyBean255CustomerList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Controller
@RequestMapping("main30")
public class Controller30 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(Integer id, Model model) throws Exception {
        if (id != null) {
            String sql = """
                    SELECT *
                    FROM Customers
                    WHERE CustomerID = ?
                    """;
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            try (conn; pstmt; rs) {
                if (rs.next()) {
                    MyBean255CustomerList c = new MyBean255CustomerList();
                    c.setId(rs.getInt(1));
                    c.setName(rs.getString(2));
                    c.setContactName(rs.getString(3));
                    c.setAddress(rs.getString(4));
                    c.setCity(rs.getString(5));
                    c.setPostalCode(rs.getString(6));
                    c.setCountry(rs.getString(7));

                    model.addAttribute("customer", c);
                }
            }
        }
    }

    @PostMapping("sub1/update")
    public String update1(MyBean255CustomerList customerList, RedirectAttributes rttr) throws Exception {
        String sql = """
                UPDATE Customers
                SET CustomerName = ?,
                    ContactName = ?,
                    Address = ?,
                    City = ?,
                    PostalCode = ?,
                    Country = ?
                WHERE CustomerID = ?
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, customerList.getName());
        pstmt.setString(2, customerList.getContactName());
        pstmt.setString(3, customerList.getAddress());
        pstmt.setString(4, customerList.getCity());
        pstmt.setString(5, customerList.getPostalCode());
        pstmt.setString(6, customerList.getCountry());
        pstmt.setInt(7, customerList.getId());

        int rows = pstmt.executeUpdate();
        if (rows > 0) {
            rttr.addFlashAttribute("message", customerList.getId() + " has been updated");
        } else {
            rttr.addFlashAttribute("message", customerList.getId() + " has not been updated");
        }

        rttr.addAttribute("id", customerList.getId());
        return "redirect:/main30/sub1";
    }
}
