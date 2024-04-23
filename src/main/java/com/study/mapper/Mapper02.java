package com.study.mapper;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper02 {

    @Select("SELECT NOW()")
    public String selectNow();

    @Select("""
            SELECT ContactName, Address, City, Country
            FROM Customers
            WHERE CustomerID = 1;
            """)
    MyBean255CustomerList selectOneCustomer();
    // 조회 결과 컬럼 명과 리턴 타입의 객체 프로퍼티 명이 같으면
    // Mybatis 가 값을 바인딩 해줌

    @Select("""
            SELECT *
            FROM Customers
            WHERE CustomerID = 1;
            """)
    MyBean255CustomerList selectOneCustomer2();

    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName,
                   Address,
                   City,
                   Country,
                   PostalCode
            From Customers
            WHERE CustomerID = 1;
            """)
    MyBean255CustomerList selectOneCustomer3();


    @Select("""
            SELECT EmployeeID id,
                    LastName,
                    FirstName,
                    Birthdate,
                    Photo,
                    Notes
            FROM Employees
            WHERE EmployeeID = 2;
            """)
    MyBean255EmployeeList selectOneEmployee1();

    @Select("""
            SELECT EmployeeID id,
                    LastName,
                    FirstName,
                    Birthdate,
                    Photo,
                    Notes
            FROM Employees
            WHERE EmployeeID = ${id};
            """)
    MyBean255EmployeeList selectOneEmployee2(Integer id);

    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName,
                   Address,
                   City,
                   Country,
                   PostalCode
            From Customers
            WHERE CustomerID = ${id};
            """)
    MyBean255CustomerList selectOneCustomer4(Integer id);

    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName,
                   Address,
                   City,
                   Country,
                   PostalCode
            FROM Customers
            """)
    List<MyBean255CustomerList> selectAllCustomer1();

    @Select("""
            SELECT EmployeeID id,
                    LastName,
                    FirstName,
                    Birthdate,
                    Photo,
                    Notes
            FROM Employees
            ORDER BY Birthdate DESC
            """)
    List<MyBean255EmployeeList> selectAllEmployee1();

    @Select("""
            SELECT *
            FROM Customers
            WHERE Country = #{country1} 
               OR Country = #{country2} 
            ORDER BY Country
            """)
    List<MyBean255CustomerList> selectCustomersByCountry(String country1, String country2);
}
