package com.study.mapper;

import com.study.domain.MyBean255EmployeeList;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper08 {
    @Select("""
            SELECT * FROM Employees
            """)
    List<MyBean255EmployeeList> query1();
}
