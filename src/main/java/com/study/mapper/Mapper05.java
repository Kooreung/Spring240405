package com.study.mapper;

import lombok.Data;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper05 {

    @Data
    static class EmployeeIncome {
        private Integer employeeId;
        private String lastName;
        private String firstName;
        private Double income;
    }

    @Select("""
            SELECT Employees.EmployeeID,
                             LastName,
                             FirstName,
                             SUM(Quantity * Price) AS income
            FROM Orders 
                JOIN Employees
                    ON Orders.EmployeeID = Employees.EmployeeID
                JOIN OrderDetails 
                    ON Orders.OrderID = OrderDetails.OrderID
                JOIN Products
                    ON OrderDetails.ProductID = Products.ProductID
            WHERE OrderDate BETWEEN #{from} AND #{to}
            GROUP BY Employees.EmployeeID
            ORDER BY income DESC
                        """)
    List<EmployeeIncome> selectIncomeList(String from, String to);

    @Data
    static class CustomerPayment {
        private Integer customerId;
        private String customerName;
        private Double payment;
    }

    @Select("""
                        SELECT Customers.CustomerID,
                               CustomerName,
                               SUM(quantity * Price) AS payment
                        FROM Customers
                            JOIN Orders
                                ON Orders.CustomerID = Customers.CustomerID
                            JOIN OrderDetails
                                ON Orders.OrderID = OrderDetails.OrderID
                            JOIN Products
                                ON OrderDetails.ProductID = Products.ProductID
                        WHERE orderDate BETWEEN #{from} AND #{to}
                        GROUP BY Customers.CustomerID
                        ORDER BY payment DESC
            """)
    List<CustomerPayment> selectCustomerPaymentList(String from, String to);
}
