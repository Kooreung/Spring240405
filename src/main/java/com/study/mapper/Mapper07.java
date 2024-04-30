package com.study.mapper;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface Mapper07 {

    @Insert("""
            INSERT INTO Employees
            (LastName, FirstName)
            VALUES (#{lastName}, #{firstName})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert(MyBean255EmployeeList e);

    @Insert("""
            INSERT INTO Customers
            (CustomerName,Country,City)
            VALUES (#{name},#{country},#{city})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert2(MyBean255CustomerList e);
}
