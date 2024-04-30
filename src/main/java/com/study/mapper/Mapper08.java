package com.study.mapper;

import com.study.domain.MyBean255EmployeeList;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper08 {
    @Select("""
            <script>
            SELECT *
            FROM Employees
            WHERE LastName = 'abc'
            <if test="false">
            OR FirstName = 'def'
            </if>
            </script>
            """)
    List<MyBean255EmployeeList> query1();
}
