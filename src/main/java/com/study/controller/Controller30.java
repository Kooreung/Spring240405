package com.study.controller;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import com.study.mapper.Mapper01;
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

    // 직접 만든 객체 (dependency)
    // 이 작업을 우리가 하지 않고 spring 한테 맡길 수 있다.
    // = Inversion of Control
    private Mapper01 mapper = new Mapper01();

    @GetMapping("sub1")
    public void method1(Integer id, Model model) throws Exception {
        MyBean255CustomerList c = mapper.getCustomerById(id);
        model.addAttribute("customer", c);
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

    @GetMapping("sub2")
    public void method2(Integer id, Model model) throws Exception {
        if (id != null) {
            String sql = """
                SELECT * 
                FROM Employees
                WHERE EmployeeID = ?
                """;

            Connection conn = dataSource.
                getConnection();
            PreparedStatement pstmt = conn.
                prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet
                rs = pstmt.executeQuery();

            try(rs;pstmt;conn;) {
                if (rs.next()) {
                    MyBean255EmployeeList employeeList =
                        new MyBean255EmployeeList();
                    employeeList.setId(rs.getInt(1));
                    employeeList.setLastName(rs.getString(2));
                    employeeList.setFirstName(rs.getString(3));
                    employeeList.setBirthDate(rs.getString(4));
                    employeeList.setPhoto(rs.getString(5));
                    employeeList.setNotes(rs.getString(6));
                    model.addAttribute
                ("employeeList", employeeList);
                }
            }
        }
    }

    @PostMapping("sub2/update")
    public String update2(MyBean255EmployeeList employeeList, RedirectAttributes rttr) throws Exception {
        String sql = """
                UPDATE Employees
                SET LastName = ?,
                    FirstName = ?,
                    BirthDate = ?,
                    Photo = ?,
                    Notes = ?
                WHERE EmployeeID = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1, employeeList.getLastName());
        pstmt.setString(2, employeeList.getFirstName());
        pstmt.setString(3, employeeList.getBirthDate());
        pstmt.setString(4, employeeList.getPhoto());
        pstmt.setString(5, employeeList.getNotes());
        pstmt.setInt(6, employeeList.getId());

        int rows = pstmt.executeUpdate();
        if (rows > 0) {
            rttr.addFlashAttribute("message", employeeList.getId() + " has been updated");
        } else {
            rttr.addFlashAttribute("message", employeeList.getId() + " has not been updated");
        }

        rttr.addAttribute("id", employeeList.getId());
        return ("redirect:/main30/sub2");
    }
}
